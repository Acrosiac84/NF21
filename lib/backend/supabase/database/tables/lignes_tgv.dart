import '../database.dart';

class LignesTgvTable extends SupabaseTable<LignesTgvRow> {
  @override
  String get tableName => 'lignes_tgv';

  @override
  LignesTgvRow createRow(Map<String, dynamic> data) => LignesTgvRow(data);
}

class LignesTgvRow extends SupabaseDataRow {
  LignesTgvRow(super.data);

  @override
  SupabaseTable get table => LignesTgvTable();

  String? get tgv => getField<String>('tgv');
  set tgv(String? value) => setField<String>('tgv', value);
}
