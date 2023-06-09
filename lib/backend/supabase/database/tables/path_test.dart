import '../database.dart';

class PathTestTable extends SupabaseTable<PathTestRow> {
  @override
  String get tableName => 'path_Test';

  @override
  PathTestRow createRow(Map<String, dynamic> data) => PathTestRow(data);
}

class PathTestRow extends SupabaseDataRow {
  PathTestRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PathTestTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get path => getField<String>('path');
  set path(String? value) => setField<String>('path', value);
}
