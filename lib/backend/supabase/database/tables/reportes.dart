import '../database.dart';

class ReportesTable extends SupabaseTable<ReportesRow> {
  @override
  String get tableName => 'reportes';

  @override
  ReportesRow createRow(Map<String, dynamic> data) => ReportesRow(data);
}

class ReportesRow extends SupabaseDataRow {
  ReportesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReportesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get caso => getField<String>('caso');
  set caso(String? value) => setField<String>('caso', value);

  String? get descripcion => getField<String>('Descripcion');
  set descripcion(String? value) => setField<String>('Descripcion', value);

  String? get imagePath => getField<String>('image_path');
  set imagePath(String? value) => setField<String>('image_path', value);

  String get ubicacion => getField<String>('ubicacion')!;
  set ubicacion(String value) => setField<String>('ubicacion', value);
}
