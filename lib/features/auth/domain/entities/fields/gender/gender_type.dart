import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'gender_type.g.dart';

class GenderType extends EnumClass {
  static const GenderType Male = _$male;
  static const GenderType Female = _$female;
  static const GenderType Other = _$other;

  const GenderType._(String name) : super(name);

  static BuiltSet<GenderType> get values => _$values;

  static BuiltList<GenderType> get items => values.toBuiltList();

  static GenderType valueOf(String name) => _$valueOf(name);
}
