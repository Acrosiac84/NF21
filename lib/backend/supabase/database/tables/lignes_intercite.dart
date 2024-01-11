import '../database.dart';

class LignesInterciteTable extends SupabaseTable<LignesInterciteRow> {
  @override
  String get tableName => 'lignes_intercite';

  @override
  LignesInterciteRow createRow(Map<String, dynamic> data) =>
      LignesInterciteRow(data);
}

class LignesInterciteRow extends SupabaseDataRow {
  LignesInterciteRow(super.data);

  @override
  SupabaseTable get table => LignesInterciteTable();

  String? get intercite => getField<String>('intercite');
  set intercite(String? value) => setField<String>('intercite', value);
}
