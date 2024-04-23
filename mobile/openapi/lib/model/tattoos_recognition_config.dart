//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TattoosRecognitionConfig {
  /// Returns a new [TattoosRecognitionConfig] instance.
  TattoosRecognitionConfig({
    required this.enabled,
    this.mediaMode,
    required this.minScore,
    required this.modelName,
    this.modelType,
    required this.prompt,
  });

  bool enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MediaMode? mediaMode;

  double minScore;

  String modelName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelType? modelType;

  String prompt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TattoosRecognitionConfig &&
    other.enabled == enabled &&
    other.mediaMode == mediaMode &&
    other.minScore == minScore &&
    other.modelName == modelName &&
    other.modelType == modelType &&
    other.prompt == prompt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (mediaMode == null ? 0 : mediaMode!.hashCode) +
    (minScore.hashCode) +
    (modelName.hashCode) +
    (modelType == null ? 0 : modelType!.hashCode) +
    (prompt.hashCode);

  @override
  String toString() => 'TattoosRecognitionConfig[enabled=$enabled, mediaMode=$mediaMode, minScore=$minScore, modelName=$modelName, modelType=$modelType, prompt=$prompt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
    if (this.mediaMode != null) {
      json[r'mediaMode'] = this.mediaMode;
    } else {
    //  json[r'mediaMode'] = null;
    }
      json[r'minScore'] = this.minScore;
      json[r'modelName'] = this.modelName;
    if (this.modelType != null) {
      json[r'modelType'] = this.modelType;
    } else {
    //  json[r'modelType'] = null;
    }
      json[r'prompt'] = this.prompt;
    return json;
  }

  /// Returns a new [TattoosRecognitionConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TattoosRecognitionConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return TattoosRecognitionConfig(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        mediaMode: MediaMode.fromJson(json[r'mediaMode']),
        minScore: mapValueOfType<double>(json, r'minScore')!,
        modelName: mapValueOfType<String>(json, r'modelName')!,
        modelType: ModelType.fromJson(json[r'modelType']),
        prompt: mapValueOfType<String>(json, r'prompt')!,
      );
    }
    return null;
  }

  static List<TattoosRecognitionConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TattoosRecognitionConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TattoosRecognitionConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TattoosRecognitionConfig> mapFromJson(dynamic json) {
    final map = <String, TattoosRecognitionConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TattoosRecognitionConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TattoosRecognitionConfig-objects as value to a dart map
  static Map<String, List<TattoosRecognitionConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TattoosRecognitionConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TattoosRecognitionConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'minScore',
    'modelName',
    'prompt',
  };
}

