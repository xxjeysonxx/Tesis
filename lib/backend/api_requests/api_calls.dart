import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ReportesGetCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'reportesGet',
      apiUrl:
          'https://prppgvikeyzakcufjuov.supabase.co/rest/v1/reportes?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBycHBndmlrZXl6YWtjdWZqdW92Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NjExMDA5NSwiZXhwIjoyMDAxNjg2MDk1fQ.y86Nq_ynqny2FYWKNn3ZLb97ZfpfIrHFgET0DNijlHc',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBycHBndmlrZXl6YWtjdWZqdW92Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NjExMDA5NSwiZXhwIjoyMDAxNjg2MDk1fQ.y86Nq_ynqny2FYWKNn3ZLb97ZfpfIrHFgET0DNijlHc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReportesPutCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? categoria = '',
    String? caso = '',
    String? descripcion = '',
    List<String>? imagePathList,
    String? ubicacion = '',
  }) {
    final imagePath = _serializeList(imagePathList);

    final body = '''
[
  {
    "id": ${id},
    "categoria": "${categoria}",
    "caso": "${caso}",
    "ubicacion": "${ubicacion}",
    "Descripcion": "${descripcion}",
    "image_path":"${imagePath}" 
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'ReportesPut',
      apiUrl: 'https://prppgvikeyzakcufjuov.supabase.co/rest/v1/reportes',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBycHBndmlrZXl6YWtjdWZqdW92Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NjExMDA5NSwiZXhwIjoyMDAxNjg2MDk1fQ.y86Nq_ynqny2FYWKNn3ZLb97ZfpfIrHFgET0DNijlHc',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBycHBndmlrZXl6YWtjdWZqdW92Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NjExMDA5NSwiZXhwIjoyMDAxNjg2MDk1fQ.y86Nq_ynqny2FYWKNn3ZLb97ZfpfIrHFgET0DNijlHc',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: body,
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
