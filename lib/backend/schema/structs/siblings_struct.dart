// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SiblingsStruct extends BaseStruct {
  SiblingsStruct({
    String? siblingProfession,
    String? siblingRelation,
    String? siblingInstitution,
    String? sibMartialstatus,
    String? sibDegree,
  })  : _siblingProfession = siblingProfession,
        _siblingRelation = siblingRelation,
        _siblingInstitution = siblingInstitution,
        _sibMartialstatus = sibMartialstatus,
        _sibDegree = sibDegree;

  // "sibling_profession" field.
  String? _siblingProfession;
  String get siblingProfession => _siblingProfession ?? '';
  set siblingProfession(String? val) => _siblingProfession = val;
  bool hasSiblingProfession() => _siblingProfession != null;

  // "sibling_relation" field.
  String? _siblingRelation;
  String get siblingRelation => _siblingRelation ?? '';
  set siblingRelation(String? val) => _siblingRelation = val;
  bool hasSiblingRelation() => _siblingRelation != null;

  // "sibling_institution" field.
  String? _siblingInstitution;
  String get siblingInstitution => _siblingInstitution ?? '';
  set siblingInstitution(String? val) => _siblingInstitution = val;
  bool hasSiblingInstitution() => _siblingInstitution != null;

  // "sib_martialstatus" field.
  String? _sibMartialstatus;
  String get sibMartialstatus => _sibMartialstatus ?? '';
  set sibMartialstatus(String? val) => _sibMartialstatus = val;
  bool hasSibMartialstatus() => _sibMartialstatus != null;

  // "sib_degree" field.
  String? _sibDegree;
  String get sibDegree => _sibDegree ?? '';
  set sibDegree(String? val) => _sibDegree = val;
  bool hasSibDegree() => _sibDegree != null;

  static SiblingsStruct fromMap(Map<String, dynamic> data) => SiblingsStruct(
        siblingProfession: data['sibling_profession'] as String?,
        siblingRelation: data['sibling_relation'] as String?,
        siblingInstitution: data['sibling_institution'] as String?,
        sibMartialstatus: data['sib_martialstatus'] as String?,
        sibDegree: data['sib_degree'] as String?,
      );

  static SiblingsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SiblingsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'sibling_profession': _siblingProfession,
        'sibling_relation': _siblingRelation,
        'sibling_institution': _siblingInstitution,
        'sib_martialstatus': _sibMartialstatus,
        'sib_degree': _sibDegree,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sibling_profession': serializeParam(
          _siblingProfession,
          ParamType.String,
        ),
        'sibling_relation': serializeParam(
          _siblingRelation,
          ParamType.String,
        ),
        'sibling_institution': serializeParam(
          _siblingInstitution,
          ParamType.String,
        ),
        'sib_martialstatus': serializeParam(
          _sibMartialstatus,
          ParamType.String,
        ),
        'sib_degree': serializeParam(
          _sibDegree,
          ParamType.String,
        ),
      }.withoutNulls;

  static SiblingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SiblingsStruct(
        siblingProfession: deserializeParam(
          data['sibling_profession'],
          ParamType.String,
          false,
        ),
        siblingRelation: deserializeParam(
          data['sibling_relation'],
          ParamType.String,
          false,
        ),
        siblingInstitution: deserializeParam(
          data['sibling_institution'],
          ParamType.String,
          false,
        ),
        sibMartialstatus: deserializeParam(
          data['sib_martialstatus'],
          ParamType.String,
          false,
        ),
        sibDegree: deserializeParam(
          data['sib_degree'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SiblingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SiblingsStruct &&
        siblingProfession == other.siblingProfession &&
        siblingRelation == other.siblingRelation &&
        siblingInstitution == other.siblingInstitution &&
        sibMartialstatus == other.sibMartialstatus &&
        sibDegree == other.sibDegree;
  }

  @override
  int get hashCode => const ListEquality().hash([
        siblingProfession,
        siblingRelation,
        siblingInstitution,
        sibMartialstatus,
        sibDegree
      ]);
}

SiblingsStruct createSiblingsStruct({
  String? siblingProfession,
  String? siblingRelation,
  String? siblingInstitution,
  String? sibMartialstatus,
  String? sibDegree,
}) =>
    SiblingsStruct(
      siblingProfession: siblingProfession,
      siblingRelation: siblingRelation,
      siblingInstitution: siblingInstitution,
      sibMartialstatus: sibMartialstatus,
      sibDegree: sibDegree,
    );
