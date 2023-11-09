// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FamilyStruct extends BaseStruct {
  FamilyStruct({
    String? fatherName,
    String? motherName,
    String? fatherProfession,
    String? motherProfession,
  })  : _fatherName = fatherName,
        _motherName = motherName,
        _fatherProfession = fatherProfession,
        _motherProfession = motherProfession;

  // "father_name" field.
  String? _fatherName;
  String get fatherName => _fatherName ?? '';
  set fatherName(String? val) => _fatherName = val;
  bool hasFatherName() => _fatherName != null;

  // "mother_name" field.
  String? _motherName;
  String get motherName => _motherName ?? '';
  set motherName(String? val) => _motherName = val;
  bool hasMotherName() => _motherName != null;

  // "father_profession" field.
  String? _fatherProfession;
  String get fatherProfession => _fatherProfession ?? '';
  set fatherProfession(String? val) => _fatherProfession = val;
  bool hasFatherProfession() => _fatherProfession != null;

  // "mother_profession" field.
  String? _motherProfession;
  String get motherProfession => _motherProfession ?? '';
  set motherProfession(String? val) => _motherProfession = val;
  bool hasMotherProfession() => _motherProfession != null;

  static FamilyStruct fromMap(Map<String, dynamic> data) => FamilyStruct(
        fatherName: data['father_name'] as String?,
        motherName: data['mother_name'] as String?,
        fatherProfession: data['father_profession'] as String?,
        motherProfession: data['mother_profession'] as String?,
      );

  static FamilyStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? FamilyStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'father_name': _fatherName,
        'mother_name': _motherName,
        'father_profession': _fatherProfession,
        'mother_profession': _motherProfession,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'father_name': serializeParam(
          _fatherName,
          ParamType.String,
        ),
        'mother_name': serializeParam(
          _motherName,
          ParamType.String,
        ),
        'father_profession': serializeParam(
          _fatherProfession,
          ParamType.String,
        ),
        'mother_profession': serializeParam(
          _motherProfession,
          ParamType.String,
        ),
      }.withoutNulls;

  static FamilyStruct fromSerializableMap(Map<String, dynamic> data) =>
      FamilyStruct(
        fatherName: deserializeParam(
          data['father_name'],
          ParamType.String,
          false,
        ),
        motherName: deserializeParam(
          data['mother_name'],
          ParamType.String,
          false,
        ),
        fatherProfession: deserializeParam(
          data['father_profession'],
          ParamType.String,
          false,
        ),
        motherProfession: deserializeParam(
          data['mother_profession'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FamilyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FamilyStruct &&
        fatherName == other.fatherName &&
        motherName == other.motherName &&
        fatherProfession == other.fatherProfession &&
        motherProfession == other.motherProfession;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([fatherName, motherName, fatherProfession, motherProfession]);
}

FamilyStruct createFamilyStruct({
  String? fatherName,
  String? motherName,
  String? fatherProfession,
  String? motherProfession,
}) =>
    FamilyStruct(
      fatherName: fatherName,
      motherName: motherName,
      fatherProfession: fatherProfession,
      motherProfession: motherProfession,
    );
