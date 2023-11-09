// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    int? id,
    String? username,
    String? email,
    String? image,
    String? token,
  })  : _id = id,
        _username = username,
        _email = email,
        _image = image,
        _token = token;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;
  bool hasToken() => _token != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        id: castToType<int>(data['id']),
        username: data['username'] as String?,
        email: data['email'] as String?,
        image: data['image'] as String?,
        token: data['token'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UsersStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'username': _username,
        'email': _email,
        'image': _image,
        'token': _token,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        id == other.id &&
        username == other.username &&
        email == other.email &&
        image == other.image &&
        token == other.token;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, username, email, image, token]);
}

UsersStruct createUsersStruct({
  int? id,
  String? username,
  String? email,
  String? image,
  String? token,
}) =>
    UsersStruct(
      id: id,
      username: username,
      email: email,
      image: image,
      token: token,
    );
