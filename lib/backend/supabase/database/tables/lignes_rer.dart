import '../database.dart';

class LignesRerTable extends SupabaseTable<LignesRerRow> {
  @override
  String get tableName => 'lignes_rer';

  @override
  LignesRerRow createRow(Map<String, dynamic> data) => LignesRerRow(data);
}

class LignesRerRow extends SupabaseDataRow {
  LignesRerRow(super.data);

  @override
  SupabaseTable get table => LignesRerTable();

  String? get rer => getField<String>('rer');
  set rer(String? value) => setField<String>('rer', value);
}
