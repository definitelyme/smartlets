import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/features/student/domain/domain.dart';

class Lessons extends FieldObject<KtList<Lesson>> {
  final Either<FieldObjectException<String>, KtList<Lesson>> value;

  factory Lessons({@required KtList<Lesson> input}) {
    assert(input != null);
    return Lessons._(right(input));
  }

  const Lessons._([this.value]);

  bool get isEmpty => value.getOrElse(() => emptyList()).isEmpty();

  bool get isNotEmpty => value.getOrElse(() => emptyList()).isNotEmpty();

  int get length => value.getOrElse(() => emptyList()).size;

  Lesson get first => value.getOrElse(() => emptyList())?.first();

  Lesson get last => value.getOrElse(() => emptyList())?.last();

  KtList<Lesson> get getOrEmpty => value.getOrElse(() => emptyList())?.orEmpty();

  Duration get duration => value.getOrElse(() => emptyList()).iter.fold<Duration>(Duration.zero, (p, c) => p + c.duration);

  Lesson get(int index) => value.getOrElse(() => emptyList())?.elementAtOrNull(index);

  KtList<Lesson> add(Lesson e) => value.getOrElse(() => emptyList())?.plusElement(e);

  KtList<Lesson> remove(Lesson e) => value.getOrElse(() => emptyList())?.minusElement(e);

  bool exists(Lesson lesson) => value.getOrElse(() => emptyList())?.any((a) => a == lesson);

  KtList<R> map<R>(R Function(Lesson) transform) => value.getOrElse(() => emptyList()).map(transform);

  void forEach(void Function(Lesson) action) => value.getOrElse(() => emptyList()).forEach(action);

  static Lessons get list1 => Lessons(
        input: KtList.from([
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "Introduction"),
            duration: Duration(minutes: 1),
          ),
          //
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "What is Web Design?"),
            duration: Duration(minutes: 5),
          ),
          //
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "Different aspect of Web Design"),
            duration: Duration(minutes: 10),
          ),
          //
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "Web Design in a nutshell"),
            duration: Duration(minutes: 8),
          ),
        ]),
      );

  static Lessons get list2 => Lessons(
        input: KtList.from([
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "Creating Responsive Design"),
            duration: Duration(minutes: 21),
          ),
          //
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "Minimalism"),
            duration: Duration(minutes: 14),
          ),
          //
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "Cross-Browser Compatibility"),
            duration: Duration(minutes: 6),
          ),
          //
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "Typography"),
            duration: Duration(minutes: 19),
          ),
          //
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "CSS Animations"),
            duration: Duration(minutes: 36),
          ),
          //
          Lesson(
            id: UniqueId(),
            title: LessonTitle(input: "Parallax Scrolling"),
            duration: Duration(minutes: 12),
          ),
        ]),
      );
}
