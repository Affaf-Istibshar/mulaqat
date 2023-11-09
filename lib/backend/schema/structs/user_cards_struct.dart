// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCardsStruct extends BaseStruct {
  UserCardsStruct({
    int? id,
    String? firstname,
    String? gender,
    String? dateOfBirth,
    String? email,
    String? country,
    String? city,
    int? phone,
    String? martialStatus,
    String? numberOfChildren,
    int? marriageDuration,
    String? image,
    int? userId,
    String? url,
    String? biography,
    String? religion,
    String? sect,
    String? height,
    bool? smoking,
    String? weight,
    String? language,
    String? bloodGroup,
    String? education,
    String? profession,
    String? caste,
    String? subCaste,
    String? income,
    String? nationality,
    List<FamilyStruct>? familyInfo,
    String? motherTongue,
    String? lastname,
    List<SiblingsStruct>? siblingInfo,
    List<PartnerStruct>? partnerInterest,
  })  : _id = id,
        _firstname = firstname,
        _gender = gender,
        _dateOfBirth = dateOfBirth,
        _email = email,
        _country = country,
        _city = city,
        _phone = phone,
        _martialStatus = martialStatus,
        _numberOfChildren = numberOfChildren,
        _marriageDuration = marriageDuration,
        _image = image,
        _userId = userId,
        _url = url,
        _biography = biography,
        _religion = religion,
        _sect = sect,
        _height = height,
        _smoking = smoking,
        _weight = weight,
        _language = language,
        _bloodGroup = bloodGroup,
        _education = education,
        _profession = profession,
        _caste = caste,
        _subCaste = subCaste,
        _income = income,
        _nationality = nationality,
        _familyInfo = familyInfo,
        _motherTongue = motherTongue,
        _lastname = lastname,
        _siblingInfo = siblingInfo,
        _partnerInterest = partnerInterest;

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  set firstname(String? val) => _firstname = val;
  bool hasFirstname() => _firstname != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "date_of_birth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  set dateOfBirth(String? val) => _dateOfBirth = val;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  set phone(int? val) => _phone = val;
  void incrementPhone(int amount) => _phone = phone + amount;
  bool hasPhone() => _phone != null;

  // "martial_status" field.
  String? _martialStatus;
  String get martialStatus => _martialStatus ?? '';
  set martialStatus(String? val) => _martialStatus = val;
  bool hasMartialStatus() => _martialStatus != null;

  // "number_of_children" field.
  String? _numberOfChildren;
  String get numberOfChildren => _numberOfChildren ?? '';
  set numberOfChildren(String? val) => _numberOfChildren = val;
  bool hasNumberOfChildren() => _numberOfChildren != null;

  // "marriage_duration" field.
  int? _marriageDuration;
  int get marriageDuration => _marriageDuration ?? 0;
  set marriageDuration(int? val) => _marriageDuration = val;
  void incrementMarriageDuration(int amount) =>
      _marriageDuration = marriageDuration + amount;
  bool hasMarriageDuration() => _marriageDuration != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  // "biography" field.
  String? _biography;
  String get biography => _biography ?? '';
  set biography(String? val) => _biography = val;
  bool hasBiography() => _biography != null;

  // "religion" field.
  String? _religion;
  String get religion => _religion ?? '';
  set religion(String? val) => _religion = val;
  bool hasReligion() => _religion != null;

  // "sect" field.
  String? _sect;
  String get sect => _sect ?? '';
  set sect(String? val) => _sect = val;
  bool hasSect() => _sect != null;

  // "height" field.
  String? _height;
  String get height => _height ?? '';
  set height(String? val) => _height = val;
  bool hasHeight() => _height != null;

  // "smoking" field.
  bool? _smoking;
  bool get smoking => _smoking ?? false;
  set smoking(bool? val) => _smoking = val;
  bool hasSmoking() => _smoking != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  set weight(String? val) => _weight = val;
  bool hasWeight() => _weight != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;
  bool hasLanguage() => _language != null;

  // "blood_group" field.
  String? _bloodGroup;
  String get bloodGroup => _bloodGroup ?? '';
  set bloodGroup(String? val) => _bloodGroup = val;
  bool hasBloodGroup() => _bloodGroup != null;

  // "education" field.
  String? _education;
  String get education => _education ?? '';
  set education(String? val) => _education = val;
  bool hasEducation() => _education != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  set profession(String? val) => _profession = val;
  bool hasProfession() => _profession != null;

  // "caste" field.
  String? _caste;
  String get caste => _caste ?? '';
  set caste(String? val) => _caste = val;
  bool hasCaste() => _caste != null;

  // "sub_caste" field.
  String? _subCaste;
  String get subCaste => _subCaste ?? '';
  set subCaste(String? val) => _subCaste = val;
  bool hasSubCaste() => _subCaste != null;

  // "income" field.
  String? _income;
  String get income => _income ?? '';
  set income(String? val) => _income = val;
  bool hasIncome() => _income != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  set nationality(String? val) => _nationality = val;
  bool hasNationality() => _nationality != null;

  // "family_info" field.
  List<FamilyStruct>? _familyInfo;
  List<FamilyStruct> get familyInfo => _familyInfo ?? const [];
  set familyInfo(List<FamilyStruct>? val) => _familyInfo = val;
  void updateFamilyInfo(Function(List<FamilyStruct>) updateFn) =>
      updateFn(_familyInfo ??= []);
  bool hasFamilyInfo() => _familyInfo != null;

  // "mother_tongue" field.
  String? _motherTongue;
  String get motherTongue => _motherTongue ?? '';
  set motherTongue(String? val) => _motherTongue = val;
  bool hasMotherTongue() => _motherTongue != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  set lastname(String? val) => _lastname = val;
  bool hasLastname() => _lastname != null;

  // "sibling_Info" field.
  List<SiblingsStruct>? _siblingInfo;
  List<SiblingsStruct> get siblingInfo => _siblingInfo ?? const [];
  set siblingInfo(List<SiblingsStruct>? val) => _siblingInfo = val;
  void updateSiblingInfo(Function(List<SiblingsStruct>) updateFn) =>
      updateFn(_siblingInfo ??= []);
  bool hasSiblingInfo() => _siblingInfo != null;

  // "partner_interest" field.
  List<PartnerStruct>? _partnerInterest;
  List<PartnerStruct> get partnerInterest => _partnerInterest ?? const [];
  set partnerInterest(List<PartnerStruct>? val) => _partnerInterest = val;
  void updatePartnerInterest(Function(List<PartnerStruct>) updateFn) =>
      updateFn(_partnerInterest ??= []);
  bool hasPartnerInterest() => _partnerInterest != null;

  static UserCardsStruct fromMap(Map<String, dynamic> data) => UserCardsStruct(
        id: castToType<int>(data['Id']),
        firstname: data['firstname'] as String?,
        gender: data['gender'] as String?,
        dateOfBirth: data['date_of_birth'] as String?,
        email: data['email'] as String?,
        country: data['country'] as String?,
        city: data['city'] as String?,
        phone: castToType<int>(data['phone']),
        martialStatus: data['martial_status'] as String?,
        numberOfChildren: data['number_of_children'] as String?,
        marriageDuration: castToType<int>(data['marriage_duration']),
        image: data['image'] as String?,
        userId: castToType<int>(data['user_id']),
        url: data['url'] as String?,
        biography: data['biography'] as String?,
        religion: data['religion'] as String?,
        sect: data['sect'] as String?,
        height: data['height'] as String?,
        smoking: data['smoking'] as bool?,
        weight: data['weight'] as String?,
        language: data['language'] as String?,
        bloodGroup: data['blood_group'] as String?,
        education: data['education'] as String?,
        profession: data['profession'] as String?,
        caste: data['caste'] as String?,
        subCaste: data['sub_caste'] as String?,
        income: data['income'] as String?,
        nationality: data['nationality'] as String?,
        familyInfo: getStructList(
          data['family_info'],
          FamilyStruct.fromMap,
        ),
        motherTongue: data['mother_tongue'] as String?,
        lastname: data['lastname'] as String?,
        siblingInfo: getStructList(
          data['sibling_Info'],
          SiblingsStruct.fromMap,
        ),
        partnerInterest: getStructList(
          data['partner_interest'],
          PartnerStruct.fromMap,
        ),
      );

  static UserCardsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserCardsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'firstname': _firstname,
        'gender': _gender,
        'date_of_birth': _dateOfBirth,
        'email': _email,
        'country': _country,
        'city': _city,
        'phone': _phone,
        'martial_status': _martialStatus,
        'number_of_children': _numberOfChildren,
        'marriage_duration': _marriageDuration,
        'image': _image,
        'user_id': _userId,
        'url': _url,
        'biography': _biography,
        'religion': _religion,
        'sect': _sect,
        'height': _height,
        'smoking': _smoking,
        'weight': _weight,
        'language': _language,
        'blood_group': _bloodGroup,
        'education': _education,
        'profession': _profession,
        'caste': _caste,
        'sub_caste': _subCaste,
        'income': _income,
        'nationality': _nationality,
        'family_info': _familyInfo?.map((e) => e.toMap()).toList(),
        'mother_tongue': _motherTongue,
        'lastname': _lastname,
        'sibling_Info': _siblingInfo?.map((e) => e.toMap()).toList(),
        'partner_interest': _partnerInterest?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'firstname': serializeParam(
          _firstname,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'date_of_birth': serializeParam(
          _dateOfBirth,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.int,
        ),
        'martial_status': serializeParam(
          _martialStatus,
          ParamType.String,
        ),
        'number_of_children': serializeParam(
          _numberOfChildren,
          ParamType.String,
        ),
        'marriage_duration': serializeParam(
          _marriageDuration,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'biography': serializeParam(
          _biography,
          ParamType.String,
        ),
        'religion': serializeParam(
          _religion,
          ParamType.String,
        ),
        'sect': serializeParam(
          _sect,
          ParamType.String,
        ),
        'height': serializeParam(
          _height,
          ParamType.String,
        ),
        'smoking': serializeParam(
          _smoking,
          ParamType.bool,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.String,
        ),
        'language': serializeParam(
          _language,
          ParamType.String,
        ),
        'blood_group': serializeParam(
          _bloodGroup,
          ParamType.String,
        ),
        'education': serializeParam(
          _education,
          ParamType.String,
        ),
        'profession': serializeParam(
          _profession,
          ParamType.String,
        ),
        'caste': serializeParam(
          _caste,
          ParamType.String,
        ),
        'sub_caste': serializeParam(
          _subCaste,
          ParamType.String,
        ),
        'income': serializeParam(
          _income,
          ParamType.String,
        ),
        'nationality': serializeParam(
          _nationality,
          ParamType.String,
        ),
        'family_info': serializeParam(
          _familyInfo,
          ParamType.DataStruct,
          true,
        ),
        'mother_tongue': serializeParam(
          _motherTongue,
          ParamType.String,
        ),
        'lastname': serializeParam(
          _lastname,
          ParamType.String,
        ),
        'sibling_Info': serializeParam(
          _siblingInfo,
          ParamType.DataStruct,
          true,
        ),
        'partner_interest': serializeParam(
          _partnerInterest,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static UserCardsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserCardsStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        firstname: deserializeParam(
          data['firstname'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['date_of_birth'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.int,
          false,
        ),
        martialStatus: deserializeParam(
          data['martial_status'],
          ParamType.String,
          false,
        ),
        numberOfChildren: deserializeParam(
          data['number_of_children'],
          ParamType.String,
          false,
        ),
        marriageDuration: deserializeParam(
          data['marriage_duration'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        biography: deserializeParam(
          data['biography'],
          ParamType.String,
          false,
        ),
        religion: deserializeParam(
          data['religion'],
          ParamType.String,
          false,
        ),
        sect: deserializeParam(
          data['sect'],
          ParamType.String,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.String,
          false,
        ),
        smoking: deserializeParam(
          data['smoking'],
          ParamType.bool,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.String,
          false,
        ),
        language: deserializeParam(
          data['language'],
          ParamType.String,
          false,
        ),
        bloodGroup: deserializeParam(
          data['blood_group'],
          ParamType.String,
          false,
        ),
        education: deserializeParam(
          data['education'],
          ParamType.String,
          false,
        ),
        profession: deserializeParam(
          data['profession'],
          ParamType.String,
          false,
        ),
        caste: deserializeParam(
          data['caste'],
          ParamType.String,
          false,
        ),
        subCaste: deserializeParam(
          data['sub_caste'],
          ParamType.String,
          false,
        ),
        income: deserializeParam(
          data['income'],
          ParamType.String,
          false,
        ),
        nationality: deserializeParam(
          data['nationality'],
          ParamType.String,
          false,
        ),
        familyInfo: deserializeStructParam<FamilyStruct>(
          data['family_info'],
          ParamType.DataStruct,
          true,
          structBuilder: FamilyStruct.fromSerializableMap,
        ),
        motherTongue: deserializeParam(
          data['mother_tongue'],
          ParamType.String,
          false,
        ),
        lastname: deserializeParam(
          data['lastname'],
          ParamType.String,
          false,
        ),
        siblingInfo: deserializeStructParam<SiblingsStruct>(
          data['sibling_Info'],
          ParamType.DataStruct,
          true,
          structBuilder: SiblingsStruct.fromSerializableMap,
        ),
        partnerInterest: deserializeStructParam<PartnerStruct>(
          data['partner_interest'],
          ParamType.DataStruct,
          true,
          structBuilder: PartnerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserCardsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserCardsStruct &&
        id == other.id &&
        firstname == other.firstname &&
        gender == other.gender &&
        dateOfBirth == other.dateOfBirth &&
        email == other.email &&
        country == other.country &&
        city == other.city &&
        phone == other.phone &&
        martialStatus == other.martialStatus &&
        numberOfChildren == other.numberOfChildren &&
        marriageDuration == other.marriageDuration &&
        image == other.image &&
        userId == other.userId &&
        url == other.url &&
        biography == other.biography &&
        religion == other.religion &&
        sect == other.sect &&
        height == other.height &&
        smoking == other.smoking &&
        weight == other.weight &&
        language == other.language &&
        bloodGroup == other.bloodGroup &&
        education == other.education &&
        profession == other.profession &&
        caste == other.caste &&
        subCaste == other.subCaste &&
        income == other.income &&
        nationality == other.nationality &&
        listEquality.equals(familyInfo, other.familyInfo) &&
        motherTongue == other.motherTongue &&
        lastname == other.lastname &&
        listEquality.equals(siblingInfo, other.siblingInfo) &&
        listEquality.equals(partnerInterest, other.partnerInterest);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        firstname,
        gender,
        dateOfBirth,
        email,
        country,
        city,
        phone,
        martialStatus,
        numberOfChildren,
        marriageDuration,
        image,
        userId,
        url,
        biography,
        religion,
        sect,
        height,
        smoking,
        weight,
        language,
        bloodGroup,
        education,
        profession,
        caste,
        subCaste,
        income,
        nationality,
        familyInfo,
        motherTongue,
        lastname,
        siblingInfo,
        partnerInterest
      ]);
}

UserCardsStruct createUserCardsStruct({
  int? id,
  String? firstname,
  String? gender,
  String? dateOfBirth,
  String? email,
  String? country,
  String? city,
  int? phone,
  String? martialStatus,
  String? numberOfChildren,
  int? marriageDuration,
  String? image,
  int? userId,
  String? url,
  String? biography,
  String? religion,
  String? sect,
  String? height,
  bool? smoking,
  String? weight,
  String? language,
  String? bloodGroup,
  String? education,
  String? profession,
  String? caste,
  String? subCaste,
  String? income,
  String? nationality,
  String? motherTongue,
  String? lastname,
}) =>
    UserCardsStruct(
      id: id,
      firstname: firstname,
      gender: gender,
      dateOfBirth: dateOfBirth,
      email: email,
      country: country,
      city: city,
      phone: phone,
      martialStatus: martialStatus,
      numberOfChildren: numberOfChildren,
      marriageDuration: marriageDuration,
      image: image,
      userId: userId,
      url: url,
      biography: biography,
      religion: religion,
      sect: sect,
      height: height,
      smoking: smoking,
      weight: weight,
      language: language,
      bloodGroup: bloodGroup,
      education: education,
      profession: profession,
      caste: caste,
      subCaste: subCaste,
      income: income,
      nationality: nationality,
      motherTongue: motherTongue,
      lastname: lastname,
    );
