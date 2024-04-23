//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TattoosRecognitionResponseDto {
  /// Returns a new [TattoosRecognitionResponseDto] instance.
  TattoosRecognitionResponseDto({
    this.data = const [],
    required this.id,
  });

  List<TattoosRecognizeItem> data;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TattoosRecognitionResponseDto &&
    _deepEquality.equals(other.data, data) &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'TattoosRecognitionResponseDto[data=$data, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [TattoosRecognitionResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TattoosRecognitionResponseDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return TattoosRecognitionResponseDto(
        data: TattoosRecognizeItem.listFromJson(json[r'data']),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<TattoosRecognitionResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TattoosRecognitionResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TattoosRecognitionResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TattoosRecognitionResponseDto> mapFromJson(dynamic json) {
    final map = <String, TattoosRecognitionResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TattoosRecognitionResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TattoosRecognitionResponseDto-objects as value to a dart map
  static Map<String, List<TattoosRecognitionResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TattoosRecognitionResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TattoosRecognitionResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'id',
  };
}

