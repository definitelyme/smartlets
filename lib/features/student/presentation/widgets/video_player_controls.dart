import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class VideoPlayerControls extends StatefulWidget {
  const VideoPlayerControls({Key key}) : super(key: key);

  @override
  _VideoPlayerControlsState createState() => _VideoPlayerControlsState();
}

class _VideoPlayerControlsState extends State<VideoPlayerControls> with AutomaticKeepAliveClientMixin {
  final EdgeInsets seekbarPadding = EdgeInsets.symmetric(horizontal: App.width * 0.02);

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<PlaybackBloc, PlaybackState>(
      builder: (context, _) {
        // ignore: close_sinks
        final _bloc = context.bloc<PlaybackBloc>();

        return HorizontalSpace(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: FlickAutoHideChild(
                  child: AnimatedContainer(
                    height: double.infinity,
                    duration: Duration(seconds: 1),
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                  ),
                ),
              ),
              //
              Positioned.fill(
                child: FlickSeekVideoAction(
                  backwardSeekIcon: Icon(Smartlets.skip_button, size: 30),
                  forwardSeekIcon: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(Smartlets.skip_button, size: 30),
                  ),
                  child: Center(
                    child: Visibility(
                      visible: _bloc.state.manager.flickVideoManager.nextVideoAutoPlayTimer == null,
                      replacement: FlickAutoPlayCircularProgress(
                        colors: FlickAutoPlayTimerProgressColors(
                          backgroundColor: Colors.white38,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      child: FlickVideoBuffer(
                        bufferingChild: CircularProgressBar.adaptive(
                          width: 35,
                          height: 35,
                          strokeWidth: 3.0,
                          radius: 14,
                        ),
                        child: FlickShowControlsAction(
                          // behavior: HitTestBehavior.translucent,
                          child: FlickAutoHideChild(
                            showIfVideoNotInitialized: false,
                            child: FlickPlayToggle(
                              playChild: Icon(Smartlets.play_button),
                              pauseChild: Icon(Smartlets.pause_button),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: FlickAutoHideChild(
                  showIfVideoNotInitialized: false,
                  child: Container(
                    width: App.width,
                    color: Colors.grey.withOpacity(0.2),
                    child: Column(
                      children: [
                        Visibility(
                          visible: _bloc.state.manager.flickControlManager.isFullscreen,
                          child: Padding(
                            padding: seekbarPadding.copyWith(top: 5.0, left: App.width * 0.03),
                            child: Row(
                              children: <Widget>[
                                FlickCurrentPosition(),
                                Text(' / ', style: TextStyle(color: Colors.white)),
                                FlickTotalDuration(),
                              ],
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: FlickVideoProgressBar(
                                  flickProgressBarSettings: FlickProgressBarSettings(
                                    height: 5,
                                    handleRadius: 5,
                                    curveRadius: 100,
                                    backgroundColor: Colors.white24,
                                    bufferedColor: Colors.white38,
                                    playedColor: Colors.white,
                                    handleColor: Colors.white,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: !_bloc.state.manager.flickControlManager.isFullscreen,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      AutoSizeText("-", minFontSize: 18),
                                      FlickLeftDuration(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                        Padding(
                          padding: seekbarPadding.copyWith(bottom: App.height * 0.008),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    Flexible(child: FlickPlayToggle(size: 25)),
                                    //
                                    HorizontalSpace(width: 10.0),
                                    //
                                    Flexible(child: FlickSoundToggle(size: 25)),
                                  ],
                                ),
                              ),
                              //
                              Spacer(),
                              //
                              // TODO: Try to tweak the SafeArea on Enter Fullscreen
                              Flexible(child: FlickFullScreenToggle(size: 25)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
