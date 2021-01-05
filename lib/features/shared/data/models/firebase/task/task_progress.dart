library task_progress;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'task_progress.freezed.dart';

@freezed
@immutable
abstract class TaskProgress implements _$TaskProgress {
  @protected
  const TaskProgress._();

  const factory TaskProgress({
    @nullable @Default(0) num progress,
    @nullable Metadata metadata,
    @nullable @Default(TaskState.cancelled) TaskState state,
    @nullable String downloadUrl,
    @nullable @Default(false) @JsonKey(ignore: true) bool isRunning,
  }) = _TaskProgress;
}
