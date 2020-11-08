import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'country.freezed.dart';

@freezed
@immutable
abstract class Country implements _$Country {
  static const String DEFAULT_PREFIX = "0";
  static const String DEFAULT_HINT_TEXT = "9013844580";
  static const int DEFAULT_DIGITS_COUNT = 10;

  const Country._();

  const factory Country({
    @required CountryName name,
    @required String codeName,
    @required String dialCode,
    @required String language,
    @Default(Country.DEFAULT_PREFIX) String prefix,
    @Default(Country.DEFAULT_HINT_TEXT) String hintText,
    @Default(Country.DEFAULT_DIGITS_COUNT) int digitsCount,
  }) = _Country;

  static const Country NG = Country(
    codeName: "NG",
    dialCode: "+234",
    language: "English - UK",
    name: CountryName.Nigeria,
    digitsCount: 10,
  );

  static List<Country> get list {
    return <Country>[
      Country(
        codeName: "CA",
        dialCode: "+1",
        name: CountryName.Canada,
        digitsCount: 10,
        language: "English",
      ),
      Country(
        codeName: "CZ",
        language: "Cestina",
        name: CountryName.CzechRepublic,
        dialCode: "+420",
        digitsCount: 9,
      ),
      Country(
        codeName: "DK",
        language: "Danish",
        name: CountryName.Denmark,
        dialCode: "+45",
        digitsCount: 6,
      ),
      Country(
        codeName: "DE",
        language: "Deutsch",
        dialCode: "+49",
        name: CountryName.Germany,
        digitsCount: 8,
      ),
      Country(
        codeName: "FR",
        dialCode: "+33",
        language: "French",
        digitsCount: 9,
        name: CountryName.France,
      ),
      Country(
        codeName: "MY",
        language: "Malaysia",
        dialCode: "+60",
        name: CountryName.Malaysia,
        digitsCount: 9,
      ),
      Country(
        codeName: "MX",
        language: "Espanol - Mexico",
        dialCode: "+52",
        name: CountryName.Mexico,
        digitsCount: 10,
      ),
      Country(
        codeName: "MZ",
        language: "Mozambique",
        name: CountryName.Mozambique,
        dialCode: "+258",
        digitsCount: 8,
      ),
      NG,
      Country(
        codeName: "PT",
        language: "Portugues",
        name: CountryName.Portugal,
        dialCode: "+351",
        digitsCount: 9,
      ),
      Country(
        codeName: "RO",
        language: "Romana",
        name: CountryName.Romania,
        dialCode: "+40",
        digitsCount: 9,
      ),
      Country(
        codeName: "ES",
        dialCode: "+34",
        language: "Espanol - Espana",
        digitsCount: 9,
        name: CountryName.Spain,
      ),
      Country(
        codeName: "TZ",
        language: "Kiswahili",
        digitsCount: 9,
        dialCode: "+255",
        name: CountryName.Tanzania,
      ),
      Country(
        codeName: "US",
        dialCode: "+1",
        language: "English - US",
        name: CountryName.UnitedStates,
        digitsCount: 10,
      ),
      Country(
        codeName: "GB",
        dialCode: "+44",
        language: "English - UK",
        name: CountryName.UnitedKingdom,
        hintText: "7766 27 (3507)",
        digitsCount: 10,
      ),
    ];
  }
}
