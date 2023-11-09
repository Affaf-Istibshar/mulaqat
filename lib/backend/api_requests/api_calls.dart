import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start DETAILS OF USER Group Code

class DetailsOfUserGroup {
  static String baseUrl = 'https://api.molaqat.com/';
  static Map<String, String> headers = {};
  static ViewProfileCall viewProfileCall = ViewProfileCall();
}

class ViewProfileCall {
  Future<ApiCallResponse> call({
    String? userID = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'View Profile',
      apiUrl: '${DetailsOfUserGroup.baseUrl}/viewProfile/${userID}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'userID': userID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic family(dynamic response) => getJsonField(
        response,
        r'''$.family''',
        true,
      );
  dynamic tokEn(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
  dynamic allPerson(dynamic response) => getJsonField(
        response,
        r'''$.people''',
        true,
      );
  dynamic partner(dynamic response) => getJsonField(
        response,
        r'''$.partner''',
        true,
      );
  dynamic education(dynamic response) => getJsonField(
        response,
        r'''$.education''',
        true,
      );
  dynamic personFirstname(dynamic response) => getJsonField(
        response,
        r'''$.people.firstname''',
        true,
      );
  dynamic personCity(dynamic response) => getJsonField(
        response,
        r'''$.people.city''',
        true,
      );
  dynamic personImage(dynamic response) => getJsonField(
        response,
        r'''$.people.image''',
        true,
      );
  dynamic personUserId(dynamic response) => getJsonField(
        response,
        r'''$.people.user_id''',
        true,
      );
  dynamic personSilblings(dynamic response) => getJsonField(
        response,
        r'''$.sibling''',
        true,
      );
}

/// End DETAILS OF USER Group Code

class RegisterCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    String? confirmpassword = '',
    String? gender = '',
    int? phone,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "email": "${email}",
  "password": "${password}",
  "password_confirmation": "${confirmpassword}",
  "phone": "${phone}",
  "gender": "${gender}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: 'https://api.molaqat.com/registerUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchPersonCall {
  static Future<ApiCallResponse> call({
    String? searchResults = '',
    String? criteria = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Person',
      apiUrl: 'https://api.molaqat.com/search',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://api.molaqat.com/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic toKen(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
}

class LogOutCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Log Out',
      apiUrl: 'https://api.molaqat.com​/logout',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateProfileCall {
  static Future<ApiCallResponse> call({
    String? firstname = '',
    String? lastname = '',
    String? gender = '',
    String? country = '',
    String? city = '',
    int? phone,
    String? height = '',
    String? weight = '',
    String? martialStatus = '',
    int? marriageDuration,
    int? numberOfChildren,
    String? bloodGroup = '',
    String? smoking = '',
    String? physique = '',
    String? complexion = '',
    String? diet = '',
    String? dateOfBirth = '',
    String? disability = '',
    String? disabilityDetail = '',
    String? degree = '',
    String? institution = '',
    String? profession = '',
    double? income,
    String? religion = '',
    String? sect = '',
    String? caste = '',
    String? subCaste = '',
    String? motherTongue = '',
    String? nationality = '',
    String? biography = '',
    String? propertyName = '',
    String? propertyLocation = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "firstname": "${firstname}",
  "lastname": "${lastname}",
  "gender": "${gender}",
  "country": "${country}",
  "city": "${city}",
  "phone": "${phone}",
  "height": "${height}",
  "weight": "${weight}",
  "martial_status": "${martialStatus}",
  "marriage_duration": "${marriageDuration}",
  "number_of_children": "${numberOfChildren}",
  "blood_group": "${bloodGroup}",
  "smoking": "${smoking}",
  "physique": "${physique}",
  "complexion": "${complexion}",
  "diet": "${diet}",
  "date_of_birth": "${dateOfBirth}",
  "disability": "${disability}",
  "disability_detail": "${disabilityDetail}",
  "degree": "${degree}",
  "institution": "${institution}",
  "profession": "${profession}",
  "income": "${income}",
  "religion": "${religion}",
  "sect": "${sect}",
  "caste": "${caste}",
  "sub_caste": "${subCaste}",
  "mother_tongue": "${motherTongue}",
  "nationality": "${nationality}",
  "biography": "${biography}",
  "property_name": "${propertyName}",
  "property_location": "${propertyLocation}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Profile',
      apiUrl: 'https://api.molaqat.com/updateProfile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FamilyUpdatesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? fatherName = '',
    String? motherName = '',
    String? fatherProfession = '',
    String? motherProfession = '',
  }) async {
    final ffApiRequestBody = '''
{
  "father_name": "${fatherName}",
  "mother_name": "${motherName}",
  "father_profession": "${fatherProfession}",
  "mother_profession": "${motherProfession}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Family Updates',
      apiUrl: 'https://api.molaqat.com/updateFamilyInfo',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdatePartnerInformationCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? partnerGeneralReq = '',
    String? partnerReligion = '',
    String? partnerSect = '',
    String? partnerMartialStatus = '',
    String? partnerCaste = '',
    String? partnerSubCaste = '',
    String? partnerEducation = '',
    String? partnerProfession = '',
    String? partnerFamilyValue = '',
    String? partnerChildrenAcceptable = '',
    String? partnerSmokingAcceptable = '',
    String? partnerAgeLimit = '',
    String? partnerPhysique = '',
    String? partnerComplexion = '',
    String? partnerWeight = '',
    String? partnerHeight = '',
    String? partnerFamilyDetail = '',
    String? partnerJobDetail = '',
    String? partnerPropertyDetail = '',
    String? partnerPrefferedCountry = '',
    String? partnerCity = '',
    String? partnerResidenceCountry = '',
    String? partnerTravelledAbroad = '',
    String? partnerRelocateAbroad = '',
  }) async {
    final ffApiRequestBody = '''
{
  "partner_general_req": "${partnerGeneralReq}",
  "partner_religion": "${partnerReligion}",
  "partner_sect": "${partnerSect}",
  "partner_martial_status": "${partnerMartialStatus}",
  "partner_caste": "${partnerCaste}",
  "partner_sub_caste": "${partnerSubCaste}",
  "partner_education": "${partnerEducation}",
  "partner_profession": "${partnerProfession}",
  "partner_family_value": "${partnerFamilyValue}",
  "partner_children_acceptable": "${partnerChildrenAcceptable}",
  "partner_smoking_acceptable": "${partnerSmokingAcceptable}",
  "partner_age_limit": "${partnerAgeLimit}",
  "partner_physique": "${partnerPhysique}",
  "partner_complexion": "${partnerComplexion}",
  "partner_weight": "${partnerWeight}",
  "partner_height": "${partnerHeight}",
  "partner_family_detail": "${partnerFamilyDetail}",
  "partner_job_detail": "${partnerJobDetail}",
  "partner_property_detail": "${partnerPropertyDetail}",
  "partner_preffered_country": "${partnerPrefferedCountry}",
  "partner_city": "${partnerCity}",
  "partner_residence_country": "${partnerResidenceCountry}",
  "partner_travelled_abroad": "${partnerTravelledAbroad}",
  "partner_relocate_abroad": "${partnerRelocateAbroad}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update Partner Information',
      apiUrl: 'https://api.molaqat.com/updatePartnerInfo',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ImageUpdateCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    FFUploadedFile? newProfilePicture,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Image Update',
      apiUrl: 'https://api.molaqat.com/updateImage',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'newProfilePicture': newProfilePicture,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AddSiblingCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? relation = '',
    String? martialStatus = '',
    String? degree = '',
    String? institution = '',
    String? profession = '',
  }) async {
    final ffApiRequestBody = '''
{
  "relation": "${relation}",
  "martial_status": "${martialStatus}",
  "degree": "${degree}",
  "institution": "${institution}",
  "profession": "${profession}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Sibling',
      apiUrl: 'https://api.molaqat.com/addSiblings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchResultCall {
  static Future<ApiCallResponse> call({
    String? searchResults = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchResult',
      apiUrl: 'https://dummyjson.com/products/search?q=${searchResults}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
  static dynamic producdTitle(dynamic response) => getJsonField(
        response,
        r'''$.products[:].title''',
        true,
      );
  static dynamic productBrand(dynamic response) => getJsonField(
        response,
        r'''$.products[:].brand''',
        true,
      );
  static dynamic productCategory(dynamic response) => getJsonField(
        response,
        r'''$.products[:].category''',
        true,
      );
}

class AllProductsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'allProducts',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'auth_token': authToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic allProducts(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
  static dynamic productBrand(dynamic response) => getJsonField(
        response,
        r'''$.products[:].brand''',
        true,
      );
  static dynamic productCategory(dynamic response) => getJsonField(
        response,
        r'''$.products[:].category''',
        true,
      );
  static dynamic productImage(dynamic response) => getJsonField(
        response,
        r'''$.products[:].images''',
        true,
      );
}

class SearchGadgetsCall {
  static Future<ApiCallResponse> call({
    String? searchValue = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchGadgets',
      apiUrl: 'https://dummyjson.com/products/search?q=${searchValue}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic productData(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
}

class DummyloginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dummylogin',
      apiUrl: 'https://dummyjson.com/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
