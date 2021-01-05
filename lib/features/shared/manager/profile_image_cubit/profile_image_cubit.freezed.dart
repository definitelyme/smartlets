// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileImageStateTearOff {
  const _$ProfileImageStateTearOff();

// ignore: unused_element
  _ProfileImageState call(
      {@nullable File image,
      @nullable PickedFile pickedFile,
      @nullable GlobalKey<ImageCropState> cropKey,
      @nullable Uint8List bytes,
      @nullable Image img,
      ImageSource source = ImageSource.gallery,
      bool isLoading = false,
      bool showPicker = false}) {
    return _ProfileImageState(
      image: image,
      pickedFile: pickedFile,
      cropKey: cropKey,
      bytes: bytes,
      img: img,
      source: source,
      isLoading: isLoading,
      showPicker: showPicker,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileImageState = _$ProfileImageStateTearOff();

/// @nodoc
mixin _$ProfileImageState {
  @nullable
  File get image;
  @nullable
  PickedFile get pickedFile;
  @nullable
  GlobalKey<ImageCropState> get cropKey;
  @nullable
  Uint8List get bytes;
  @nullable
  Image get img;
  ImageSource get source;
  bool get isLoading;
  bool get showPicker;

  $ProfileImageStateCopyWith<ProfileImageState> get copyWith;
}

/// @nodoc
abstract class $ProfileImageStateCopyWith<$Res> {
  factory $ProfileImageStateCopyWith(
          ProfileImageState value, $Res Function(ProfileImageState) then) =
      _$ProfileImageStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable File image,
      @nullable PickedFile pickedFile,
      @nullable GlobalKey<ImageCropState> cropKey,
      @nullable Uint8List bytes,
      @nullable Image img,
      ImageSource source,
      bool isLoading,
      bool showPicker});
}

/// @nodoc
class _$ProfileImageStateCopyWithImpl<$Res>
    implements $ProfileImageStateCopyWith<$Res> {
  _$ProfileImageStateCopyWithImpl(this._value, this._then);

  final ProfileImageState _value;
  // ignore: unused_field
  final $Res Function(ProfileImageState) _then;

  @override
  $Res call({
    Object image = freezed,
    Object pickedFile = freezed,
    Object cropKey = freezed,
    Object bytes = freezed,
    Object img = freezed,
    Object source = freezed,
    Object isLoading = freezed,
    Object showPicker = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed ? _value.image : image as File,
      pickedFile:
          pickedFile == freezed ? _value.pickedFile : pickedFile as PickedFile,
      cropKey: cropKey == freezed
          ? _value.cropKey
          : cropKey as GlobalKey<ImageCropState>,
      bytes: bytes == freezed ? _value.bytes : bytes as Uint8List,
      img: img == freezed ? _value.img : img as Image,
      source: source == freezed ? _value.source : source as ImageSource,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showPicker:
          showPicker == freezed ? _value.showPicker : showPicker as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProfileImageStateCopyWith<$Res>
    implements $ProfileImageStateCopyWith<$Res> {
  factory _$ProfileImageStateCopyWith(
          _ProfileImageState value, $Res Function(_ProfileImageState) then) =
      __$ProfileImageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable File image,
      @nullable PickedFile pickedFile,
      @nullable GlobalKey<ImageCropState> cropKey,
      @nullable Uint8List bytes,
      @nullable Image img,
      ImageSource source,
      bool isLoading,
      bool showPicker});
}

/// @nodoc
class __$ProfileImageStateCopyWithImpl<$Res>
    extends _$ProfileImageStateCopyWithImpl<$Res>
    implements _$ProfileImageStateCopyWith<$Res> {
  __$ProfileImageStateCopyWithImpl(
      _ProfileImageState _value, $Res Function(_ProfileImageState) _then)
      : super(_value, (v) => _then(v as _ProfileImageState));

  @override
  _ProfileImageState get _value => super._value as _ProfileImageState;

  @override
  $Res call({
    Object image = freezed,
    Object pickedFile = freezed,
    Object cropKey = freezed,
    Object bytes = freezed,
    Object img = freezed,
    Object source = freezed,
    Object isLoading = freezed,
    Object showPicker = freezed,
  }) {
    return _then(_ProfileImageState(
      image: image == freezed ? _value.image : image as File,
      pickedFile:
          pickedFile == freezed ? _value.pickedFile : pickedFile as PickedFile,
      cropKey: cropKey == freezed
          ? _value.cropKey
          : cropKey as GlobalKey<ImageCropState>,
      bytes: bytes == freezed ? _value.bytes : bytes as Uint8List,
      img: img == freezed ? _value.img : img as Image,
      source: source == freezed ? _value.source : source as ImageSource,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showPicker:
          showPicker == freezed ? _value.showPicker : showPicker as bool,
    ));
  }
}

/// @nodoc
class _$_ProfileImageState extends _ProfileImageState {
  const _$_ProfileImageState(
      {@nullable this.image,
      @nullable this.pickedFile,
      @nullable this.cropKey,
      @nullable this.bytes,
      @nullable this.img,
      this.source = ImageSource.gallery,
      this.isLoading = false,
      this.showPicker = false})
      : assert(source != null),
        assert(isLoading != null),
        assert(showPicker != null),
        super._();

  @override
  @nullable
  final File image;
  @override
  @nullable
  final PickedFile pickedFile;
  @override
  @nullable
  final GlobalKey<ImageCropState> cropKey;
  @override
  @nullable
  final Uint8List bytes;
  @override
  @nullable
  final Image img;
  @JsonKey(defaultValue: ImageSource.gallery)
  @override
  final ImageSource source;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool showPicker;

  @override
  String toString() {
    return 'ProfileImageState(image: $image, pickedFile: $pickedFile, cropKey: $cropKey, bytes: $bytes, img: $img, source: $source, isLoading: $isLoading, showPicker: $showPicker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileImageState &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.pickedFile, pickedFile) ||
                const DeepCollectionEquality()
                    .equals(other.pickedFile, pickedFile)) &&
            (identical(other.cropKey, cropKey) ||
                const DeepCollectionEquality()
                    .equals(other.cropKey, cropKey)) &&
            (identical(other.bytes, bytes) ||
                const DeepCollectionEquality().equals(other.bytes, bytes)) &&
            (identical(other.img, img) ||
                const DeepCollectionEquality().equals(other.img, img)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.showPicker, showPicker) ||
                const DeepCollectionEquality()
                    .equals(other.showPicker, showPicker)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(pickedFile) ^
      const DeepCollectionEquality().hash(cropKey) ^
      const DeepCollectionEquality().hash(bytes) ^
      const DeepCollectionEquality().hash(img) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showPicker);

  @override
  _$ProfileImageStateCopyWith<_ProfileImageState> get copyWith =>
      __$ProfileImageStateCopyWithImpl<_ProfileImageState>(this, _$identity);
}

abstract class _ProfileImageState extends ProfileImageState {
  const _ProfileImageState._() : super._();
  const factory _ProfileImageState(
      {@nullable File image,
      @nullable PickedFile pickedFile,
      @nullable GlobalKey<ImageCropState> cropKey,
      @nullable Uint8List bytes,
      @nullable Image img,
      ImageSource source,
      bool isLoading,
      bool showPicker}) = _$_ProfileImageState;

  @override
  @nullable
  File get image;
  @override
  @nullable
  PickedFile get pickedFile;
  @override
  @nullable
  GlobalKey<ImageCropState> get cropKey;
  @override
  @nullable
  Uint8List get bytes;
  @override
  @nullable
  Image get img;
  @override
  ImageSource get source;
  @override
  bool get isLoading;
  @override
  bool get showPicker;
  @override
  _$ProfileImageStateCopyWith<_ProfileImageState> get copyWith;
}
