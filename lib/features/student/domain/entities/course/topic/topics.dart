import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/features/student/domain/domain.dart';

class Topics extends FieldObject<KtList<Topic>> {
  final Either<FieldObjectException<String>, KtList<Topic>> value;

  factory Topics({@required KtList<Topic> input}) {
    assert(input != null);
    return Topics._(right(input));
  }

  const Topics._([this.value]);

  int get length => value.getOrElse(() => emptyList()).size;

  bool get isEmpty => value.getOrElse(() => emptyList()).isEmpty();

  bool get isNotEmpty => value.getOrElse(() => emptyList()).isNotEmpty();

  Topic get first => value.getOrElse(() => emptyList())?.first();

  Topic get last => value.getOrElse(() => emptyList())?.last();

  KtList<Topic> get getOrEmpty => value.getOrElse(() => emptyList())?.orEmpty();

  int get lessonsCount => value?.getOrElse(() => emptyList())?.iter?.fold(0, (p, e) => p + e.lessonsCount);

  Duration get duration => value?.getOrElse(() => emptyList())?.iter?.fold(Duration.zero, (p, e) => p + e.duration);

  Topic get(int index) => value.getOrElse(() => emptyList())?.elementAtOrNull(index);

  KtList<Topic> add(Topic e) => value.getOrElse(() => emptyList())?.plusElement(e);

  KtList<Topic> remove(Topic e) => value.getOrElse(() => emptyList())?.minusElement(e);

  bool exists(Topic topic) => value.getOrElse(() => emptyList())?.any((a) => a == topic);

  KtList<R> map<R>(R Function(Topic) transform) => value.getOrElse(() => emptyList()).map(transform);

  void forEach(void Function(Topic) action) => value.getOrElse(() => emptyList()).forEach(action);

  static Topics get list => Topics(
        input: KtList.from([
          Topic(
            id: UniqueId(),
            title: Chapter(input: "Introduction"),
            lessons: Lessons.list1,
          ),
          //
          Topic(
            id: UniqueId(),
            title: Chapter(input: "Basics of HTML"),
            lessons: Lessons.list2,
          ),
          //
          Topic(
            id: UniqueId(),
            title: Chapter(input: "More on HTML"),
            lessons: Lessons.list1,
          ),
          //
          Topic(
            id: UniqueId(),
            title: Chapter(input: "Introduction to CSS"),
            lessons: Lessons.list2,
          ),
          //
          Topic(
            id: UniqueId(),
            title: Chapter(input: "Styling like a Professional"),
            lessons: Lessons.list2,
          ),
        ]),
      );
}
