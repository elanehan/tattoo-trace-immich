//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TattoosRecognizeItem {
  /// Returns a new [TattoosRecognizeItem] instance.
  TattoosRecognizeItem({
    required this.image,
    required this.prompt,
    required this.score,
  });

  /// base-64 encoded image
  String image;

  String prompt;

  num score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TattoosRecognizeItem &&
    other.image == image &&
    other.prompt == prompt &&
    other.score == score;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image.hashCode) +
    (prompt.hashCode) +
    (score.hashCode);

  @override
  String toString() => 'TattoosRecognizeItem[image=$image, prompt=$prompt, score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'image'] = this.image;
      json[r'prompt'] = this.prompt;
      json[r'score'] = this.score;
    return json;
  }

  /// Returns a new [TattoosRecognizeItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TattoosRecognizeItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return TattoosRecognizeItem(
        image: mapValueOfType<String>(json, r'image')!,
        prompt: mapValueOfType<String>(json, r'prompt')!,
        score: num.parse('${json[r'score']}'),
      );
    }
    return null;
  }

  static List<TattoosRecognizeItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TattoosRecognizeItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TattoosRecognizeItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TattoosRecognizeItem> mapFromJson(dynamic json) {
    final map = <String, TattoosRecognizeItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TattoosRecognizeItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TattoosRecognizeItem-objects as value to a dart map
  static Map<String, List<TattoosRecognizeItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TattoosRecognizeItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TattoosRecognizeItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'image',
    'prompt',
    'score',
  };
}

