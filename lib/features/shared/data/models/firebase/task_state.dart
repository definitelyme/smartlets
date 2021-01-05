import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'task_state.g.dart';

class TaskState extends EnumClass {
  static const TaskState running = _$running;
  static const TaskState success = _$success;
  static const TaskState paused = _$paused;
  static const TaskState cancelled = _$cancelled;
  static const TaskState error = _$error;

  const TaskState._(String name) : super(name);

  static BuiltSet<TaskState> get values => _$values;

  static TaskState valueOf(String name) => _$valueOf(name);
}
