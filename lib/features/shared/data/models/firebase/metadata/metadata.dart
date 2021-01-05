library metadata;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';

@freezed
@immutable
abstract class Metadata implements _$Metadata {
  @protected
  const Metadata._();

  const factory Metadata({
    @nullable String fullPath,
    @nullable @Default(0) int size,
    @nullable String contentType,
    @nullable String bucket,
    @nullable String cacheControl,
    @nullable String contentDisposition,
    @nullable String contentEncoding,
    @nullable String contentLanguage,
    @nullable String generation,
    @nullable String md5Hash,
    @nullable String name,
    @nullable String metadataGeneration,
    @nullable Map<String, String> customMetadata,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
  }) = _Metadata;
}
