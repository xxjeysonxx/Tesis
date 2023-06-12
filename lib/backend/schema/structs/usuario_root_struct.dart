// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioRootStruct extends BaseStruct {
  UsuarioRootStruct({
    String? usuario,
    String? password,
  })  : _usuario = usuario,
        _password = password;

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  set usuario(String? val) => _usuario = val;
  bool hasUsuario() => _usuario != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  static UsuarioRootStruct fromMap(Map<String, dynamic> data) =>
      UsuarioRootStruct(
        usuario: data['usuario'] as String?,
        password: data['password'] as String?,
      );

  static UsuarioRootStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UsuarioRootStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'usuario': _usuario,
        'password': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'usuario': serializeParam(
          _usuario,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsuarioRootStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioRootStruct(
        usuario: deserializeParam(
          data['usuario'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsuarioRootStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioRootStruct &&
        usuario == other.usuario &&
        password == other.password;
  }

  @override
  int get hashCode => const ListEquality().hash([usuario, password]);
}

UsuarioRootStruct createUsuarioRootStruct({
  String? usuario,
  String? password,
}) =>
    UsuarioRootStruct(
      usuario: usuario,
      password: password,
    );
