// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoricoConversaStruct extends BaseStruct {
  HistoricoConversaStruct({
    String? role,
    String? content,
  })  : _role = role,
        _content = content;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  static HistoricoConversaStruct fromMap(Map<String, dynamic> data) =>
      HistoricoConversaStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
      );

  static HistoricoConversaStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoricoConversaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'content': _content,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static HistoricoConversaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoricoConversaStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HistoricoConversaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoricoConversaStruct &&
        role == other.role &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([role, content]);
}

HistoricoConversaStruct createHistoricoConversaStruct({
  String? role,
  String? content,
}) =>
    HistoricoConversaStruct(
      role: role,
      content: content,
    );
