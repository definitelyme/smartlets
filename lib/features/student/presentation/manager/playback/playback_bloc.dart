import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:video_player/video_player.dart';

part 'playback_bloc.freezed.dart';
part 'playback_event.dart';
part 'playback_state.dart';

@Injectable()
class PlaybackBloc extends Bloc<PlaybackEvent, PlaybackState> {
  FlickManager flickManager;

  PlaybackBloc() : super(PlaybackState.init());

  void saveLocalVideo() async {
    if (env.flavor == BuildFlavor.dev) {
      final content = await rootBundle.load("${AppAssets.ASSETS_DIR}/${PlaybackState.TEST_VIDEO_NAME}.${PlaybackState.DEFAULT_EXTENSION}");
      final directory = await getExternalStorageDirectory();
      final file = File("${directory.path}/${PlaybackState.TEST_VIDEO_NAME}.${PlaybackState.DEFAULT_EXTENSION}");
      if (!(await file.exists()))
        await file.writeAsBytes(content.buffer.asUint8List());
    }
  }

  Duration controlsTimeout({bool errorInVideo, bool isPlaying, bool isVideoEnded, bool isVideoInitialized}) {
    return Duration(seconds: 1);
  }

  @override
  Stream<PlaybackState> mapEventToState(
    PlaybackEvent event,
  ) async* {
    yield state.copyWith(isLoading: true);

    yield* event.map(
      setupVideoPlayer: (e) async* {
        yield* mapSetupVideoPlayer(e);
      },
      refreshPlayer: (e) async* {
        yield e.state;
      },
      play: (e) async* {
        yield* mapPlay(e);
      },
      pause: (e) async* {
        yield* mapPause(e);
      },
      changePath: (e) async* {
        yield state.copyWith(path: e.value);
      },
      seek: (e) async* {
        yield* mapSeekTo(e);
      },
      mute: (e) async* {
        yield* mapMuteVolume(e);
      },
      unMute: (e) async* {
        yield* mapUnMuteVolume(e);
      },
      toggleFullScreen: (e) async* {
        yield* mapToggleFullScreen(e);
      },
      enterFullScreen: (e) async* {
        yield* mapEnterFullScreen(e);
      },
      changeVolume: (e) async* {
        yield* mapChangeVolume(e);
      },
      changeSliderSize: (e) async* {
        yield* mapChangeSliderSize(e);
      },
      fastForward: (e) async* {
        yield* mapFastForward(e);
      },
      rewind: (e) async* {
        yield* mapRewind(e);
      },
      exitFullScreen: (e) async* {
        yield* mapExitFullScreen(e);
      },
    );

    yield state.copyWith(isLoading: false);
  }

  Stream<PlaybackState> mapSetupVideoPlayer(_SetupVideoController e) async* {
    try {
      flickManager = state.manager?.flickVideoManager != null && state.manager.flickVideoManager.isVideoInitialized
          ? state.manager
          : FlickManager(
        videoPlayerController: env.flavor == BuildFlavor.dev
            ? VideoPlayerController.file(
          File(
              "${(await getExternalStorageDirectory()).path}/${PlaybackState.TEST_VIDEO_NAME}.${PlaybackState.DEFAULT_EXTENSION}"),
          videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
        )
            : VideoPlayerController.network(
          e.url,
          videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
          // formatHint: VideoFormat.hls,
        ),
        autoPlay: true,
        onVideoEnd: () {
          // TODO: Play Next Video
          log.w("============= Video has ended ==================");
        },
      );
    } catch (e) {
      log.e("============= Exception on Video Widget Level ==================");
      print("HERE'S WHAT WE COULD FIND ===> $e");
    }

    flickManager?.flickVideoManager?.addListener(() async {
      Duration moment;
      Duration buffered;

      try {
        moment = flickManager.flickVideoManager.videoPlayerValue?.position;
        buffered = flickManager.flickVideoManager?.videoPlayerValue?.buffered[0]?.end;
      } on RangeError {
        buffered = Duration.zero;
      } on PlatformException catch (e) {
        print("ERROR OCCURRED AT RUNTIME: $e");
      }

      add(PlaybackEvent.refreshPlayer(
        state.copyWith(
          moment: moment ?? state.moment,
          buffered: buffered ?? state.buffered,
          notifier: flickManager.flickVideoManager.videoPlayerValue,
          isPlaying: flickManager.flickVideoManager.isPlaying && !flickManager.flickVideoManager.isVideoEnded,
          isInitialized: flickManager.flickVideoManager.isVideoInitialized,
          isFinished: !flickManager.flickVideoManager.isVideoEnded,
          isFullscreen: flickManager.flickControlManager.isFullscreen,
          isMute: flickManager.flickControlManager.isMute,
          isBuffering: flickManager.flickVideoManager.videoPlayerValue.isBuffering,
          playbackDuration: flickManager.flickVideoManager.videoPlayerController.value.duration ?? state.playbackDuration,
          willLoop: flickManager.flickVideoManager.videoPlayerValue.isLooping,
        ),
      ));
    });

    add(PlaybackEvent.changeVolume(state.volume));

    yield state.copyWith(
      manager: flickManager,
      path: e.url,
    );
  }

  Stream<PlaybackState> mapMuteVolume(_MuteVideo e) async* {
    await flickManager.flickControlManager.mute();
  }

  Stream<PlaybackState> mapUnMuteVolume(_UnMuteVideo e) async* {
    await flickManager.flickControlManager.unmute();
  }

  Stream<PlaybackState> mapPlay(_PlayVideo e) async* {
    await flickManager.flickControlManager.play();
  }

  Stream<PlaybackState> mapPause(_PauseVideo e) async* {
    await flickManager.flickControlManager.pause();
  }

  Stream<PlaybackState> mapFastForward(_FastForwardVideo e) async* {
    Duration moment = state.moment;
    if (!state.isFinished) {
      moment += e.moment;
      await flickManager.flickControlManager.seekForward(moment);
    }
  }

  Stream<PlaybackState> mapRewind(_RewindVideo e) async* {
    Duration moment = state.moment;
    if (!state.isFinished) {
      moment -= e.moment;
      await flickManager.flickControlManager.seekBackward(moment);
    }
  }

  Stream<PlaybackState> mapSeekTo(_Seek e) async* {
    yield state.copyWith(isSeeking: true);
    await flickManager.flickControlManager.seekTo(e.progress);
    if (!flickManager.flickVideoManager.isPlaying) await flickManager.flickControlManager.play();
    yield state.copyWith(isSeeking: false);
  }

  Stream<PlaybackState> mapEnterFullScreen(_EnterFullScreen e) async* {
    flickManager.flickControlManager.enterFullscreen();
    yield state.copyWith(isFullscreen: true);
  }

  Stream<PlaybackState> mapExitFullScreen(_ExitFullScreen e) async* {
    flickManager.flickControlManager.exitFullscreen();
    yield state.copyWith(isFullscreen: false);
  }

  Stream<PlaybackState> mapToggleFullScreen(_ToggleFullScreen e) async* {
    flickManager.flickControlManager.toggleFullscreen();
    yield state.copyWith(isFullscreen: !state.isFullscreen);
  }

  Stream<PlaybackState> mapChangeVolume(_SetVolume e) async* {
    await flickManager.flickControlManager.setVolume(e.volume);
    yield state.copyWith(volume: e.volume);
  }

  Stream<PlaybackState> mapChangeSliderSize(_ChangeSliderComponentSize e) async* {}
}
