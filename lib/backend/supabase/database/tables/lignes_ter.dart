import '../database.dart';

class LignesTerTable extends SupabaseTable<LignesTerRow> {
  @override
  String get tableName => 'lignes_ter';

  @override
  LignesTerRow createRow(Map<String, dynamic> data) => LignesTerRow(data);
}

class LignesTerRow extends SupabaseDataRow {
  LignesTerRow(super.data);

  @override
  SupabaseTable get table => LignesTerTable();

  String? get ter => getField<String>('ter');
  set ter(String? value) => setField<String>('ter', value);
}
