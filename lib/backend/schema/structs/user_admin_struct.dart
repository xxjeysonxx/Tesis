// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAdminStruct extends BaseStruct {
  UserAdminStruct({
    List<int>? id,
    List<String>? username,
    String? password,
  })  : _id = id,
        _username = username,
        _password = password;

  // "id" field.
  List<int>? _id;
  List<int> get id => _id ?? const [];
  set id(List<int>? val) => _id = val;
  void updateId(Function(List<int>) updateFn) => updateFn(_id ??= []);
  bool hasId() => _id != null;

  // "username" field.
  List<String>? _username;
  List<String> get username => _username ?? const [];
  set username(List<String>? val) => _username = val;
  void updateUsername(Function(List<String>) updateFn) =>
      updateFn(_username ??= []);
  bool hasUsername() => _username != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  static UserAdminStruct fromMap(Map<String, dynamic> data) => UserAdminStruct(
        id: getDataList(data['id']),
        username: getDataList(data['username']),
        password: data['password'] as String?,
      );

  static UserAdminStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserAdminStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'username': _username,
        'password': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
          true,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
          true,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserAdminStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserAdminStruct(
        id: deserializeParam<int>(
          data['id'],
          ParamType.int,
          true,
        ),
        username: deserializeParam<String>(
          data['username'],
          ParamType.String,
          true,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserAdminStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserAdminStruct &&
        listEquality.equals(id, other.id) &&
        listEquality.equals(username, other.username) &&
        password == other.password;
  }

  @override
  int get hashCode => const ListEquality().hash([id, username, password]);
}

UserAdminStruct createUserAdminStruct({
  String? password,
}) =>
    UserAdminStruct(
      password: password,
    );
