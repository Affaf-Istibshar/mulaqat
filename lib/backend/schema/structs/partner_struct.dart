// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartnerStruct extends BaseStruct {
  PartnerStruct({
    String? partnerCaste,
    String? partnerCity,
    String? partnerCountry,
    String? partnerSect,
    String? partnerAge,
    String? partnerFamilyvalue,
    String? partnerWeight,
    String? partnerEducation,
    String? partnerHeight,
    String? partnerProfession,
    String? partnermartialstatus,
  })  : _partnerCaste = partnerCaste,
        _partnerCity = partnerCity,
        _partnerCountry = partnerCountry,
        _partnerSect = partnerSect,
        _partnerAge = partnerAge,
        _partnerFamilyvalue = partnerFamilyvalue,
        _partnerWeight = partnerWeight,
        _partnerEducation = partnerEducation,
        _partnerHeight = partnerHeight,
        _partnerProfession = partnerProfession,
        _partnermartialstatus = partnermartialstatus;

  // "partner_caste" field.
  String? _partnerCaste;
  String get partnerCaste => _partnerCaste ?? '';
  set partnerCaste(String? val) => _partnerCaste = val;
  bool hasPartnerCaste() => _partnerCaste != null;

  // "partner_city" field.
  String? _partnerCity;
  String get partnerCity => _partnerCity ?? '';
  set partnerCity(String? val) => _partnerCity = val;
  bool hasPartnerCity() => _partnerCity != null;

  // "partner_country" field.
  String? _partnerCountry;
  String get partnerCountry => _partnerCountry ?? '';
  set partnerCountry(String? val) => _partnerCountry = val;
  bool hasPartnerCountry() => _partnerCountry != null;

  // "partner_sect" field.
  String? _partnerSect;
  String get partnerSect => _partnerSect ?? '';
  set partnerSect(String? val) => _partnerSect = val;
  bool hasPartnerSect() => _partnerSect != null;

  // "partner_age" field.
  String? _partnerAge;
  String get partnerAge => _partnerAge ?? '';
  set partnerAge(String? val) => _partnerAge = val;
  bool hasPartnerAge() => _partnerAge != null;

  // "partner_familyvalue" field.
  String? _partnerFamilyvalue;
  String get partnerFamilyvalue => _partnerFamilyvalue ?? '';
  set partnerFamilyvalue(String? val) => _partnerFamilyvalue = val;
  bool hasPartnerFamilyvalue() => _partnerFamilyvalue != null;

  // "partner_weight" field.
  String? _partnerWeight;
  String get partnerWeight => _partnerWeight ?? '';
  set partnerWeight(String? val) => _partnerWeight = val;
  bool hasPartnerWeight() => _partnerWeight != null;

  // "partner_education" field.
  String? _partnerEducation;
  String get partnerEducation => _partnerEducation ?? '';
  set partnerEducation(String? val) => _partnerEducation = val;
  bool hasPartnerEducation() => _partnerEducation != null;

  // "partner_height" field.
  String? _partnerHeight;
  String get partnerHeight => _partnerHeight ?? '';
  set partnerHeight(String? val) => _partnerHeight = val;
  bool hasPartnerHeight() => _partnerHeight != null;

  // "partner_profession" field.
  String? _partnerProfession;
  String get partnerProfession => _partnerProfession ?? '';
  set partnerProfession(String? val) => _partnerProfession = val;
  bool hasPartnerProfession() => _partnerProfession != null;

  // "partnermartialstatus" field.
  String? _partnermartialstatus;
  String get partnermartialstatus => _partnermartialstatus ?? '';
  set partnermartialstatus(String? val) => _partnermartialstatus = val;
  bool hasPartnermartialstatus() => _partnermartialstatus != null;

  static PartnerStruct fromMap(Map<String, dynamic> data) => PartnerStruct(
        partnerCaste: data['partner_caste'] as String?,
        partnerCity: data['partner_city'] as String?,
        partnerCountry: data['partner_country'] as String?,
        partnerSect: data['partner_sect'] as String?,
        partnerAge: data['partner_age'] as String?,
        partnerFamilyvalue: data['partner_familyvalue'] as String?,
        partnerWeight: data['partner_weight'] as String?,
        partnerEducation: data['partner_education'] as String?,
        partnerHeight: data['partner_height'] as String?,
        partnerProfession: data['partner_profession'] as String?,
        partnermartialstatus: data['partnermartialstatus'] as String?,
      );

  static PartnerStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PartnerStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'partner_caste': _partnerCaste,
        'partner_city': _partnerCity,
        'partner_country': _partnerCountry,
        'partner_sect': _partnerSect,
        'partner_age': _partnerAge,
        'partner_familyvalue': _partnerFamilyvalue,
        'partner_weight': _partnerWeight,
        'partner_education': _partnerEducation,
        'partner_height': _partnerHeight,
        'partner_profession': _partnerProfession,
        'partnermartialstatus': _partnermartialstatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'partner_caste': serializeParam(
          _partnerCaste,
          ParamType.String,
        ),
        'partner_city': serializeParam(
          _partnerCity,
          ParamType.String,
        ),
        'partner_country': serializeParam(
          _partnerCountry,
          ParamType.String,
        ),
        'partner_sect': serializeParam(
          _partnerSect,
          ParamType.String,
        ),
        'partner_age': serializeParam(
          _partnerAge,
          ParamType.String,
        ),
        'partner_familyvalue': serializeParam(
          _partnerFamilyvalue,
          ParamType.String,
        ),
        'partner_weight': serializeParam(
          _partnerWeight,
          ParamType.String,
        ),
        'partner_education': serializeParam(
          _partnerEducation,
          ParamType.String,
        ),
        'partner_height': serializeParam(
          _partnerHeight,
          ParamType.String,
        ),
        'partner_profession': serializeParam(
          _partnerProfession,
          ParamType.String,
        ),
        'partnermartialstatus': serializeParam(
          _partnermartialstatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static PartnerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PartnerStruct(
        partnerCaste: deserializeParam(
          data['partner_caste'],
          ParamType.String,
          false,
        ),
        partnerCity: deserializeParam(
          data['partner_city'],
          ParamType.String,
          false,
        ),
        partnerCountry: deserializeParam(
          data['partner_country'],
          ParamType.String,
          false,
        ),
        partnerSect: deserializeParam(
          data['partner_sect'],
          ParamType.String,
          false,
        ),
        partnerAge: deserializeParam(
          data['partner_age'],
          ParamType.String,
          false,
        ),
        partnerFamilyvalue: deserializeParam(
          data['partner_familyvalue'],
          ParamType.String,
          false,
        ),
        partnerWeight: deserializeParam(
          data['partner_weight'],
          ParamType.String,
          false,
        ),
        partnerEducation: deserializeParam(
          data['partner_education'],
          ParamType.String,
          false,
        ),
        partnerHeight: deserializeParam(
          data['partner_height'],
          ParamType.String,
          false,
        ),
        partnerProfession: deserializeParam(
          data['partner_profession'],
          ParamType.String,
          false,
        ),
        partnermartialstatus: deserializeParam(
          data['partnermartialstatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PartnerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PartnerStruct &&
        partnerCaste == other.partnerCaste &&
        partnerCity == other.partnerCity &&
        partnerCountry == other.partnerCountry &&
        partnerSect == other.partnerSect &&
        partnerAge == other.partnerAge &&
        partnerFamilyvalue == other.partnerFamilyvalue &&
        partnerWeight == other.partnerWeight &&
        partnerEducation == other.partnerEducation &&
        partnerHeight == other.partnerHeight &&
        partnerProfession == other.partnerProfession &&
        partnermartialstatus == other.partnermartialstatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        partnerCaste,
        partnerCity,
        partnerCountry,
        partnerSect,
        partnerAge,
        partnerFamilyvalue,
        partnerWeight,
        partnerEducation,
        partnerHeight,
        partnerProfession,
        partnermartialstatus
      ]);
}

PartnerStruct createPartnerStruct({
  String? partnerCaste,
  String? partnerCity,
  String? partnerCountry,
  String? partnerSect,
  String? partnerAge,
  String? partnerFamilyvalue,
  String? partnerWeight,
  String? partnerEducation,
  String? partnerHeight,
  String? partnerProfession,
  String? partnermartialstatus,
}) =>
    PartnerStruct(
      partnerCaste: partnerCaste,
      partnerCity: partnerCity,
      partnerCountry: partnerCountry,
      partnerSect: partnerSect,
      partnerAge: partnerAge,
      partnerFamilyvalue: partnerFamilyvalue,
      partnerWeight: partnerWeight,
      partnerEducation: partnerEducation,
      partnerHeight: partnerHeight,
      partnerProfession: partnerProfession,
      partnermartialstatus: partnermartialstatus,
    );
