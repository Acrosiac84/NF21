import '../database.dart';

class PrerTable extends SupabaseTable<PrerRow> {
  @override
  String get tableName => 'Prer';

  @override
  PrerRow createRow(Map<String, dynamic> data) => PrerRow(data);
}

class PrerRow extends SupabaseDataRow {
  PrerRow(super.data);

  @override
  SupabaseTable get table => PrerTable();

  String? get type => getField<String>('Type');
  set type(String? value) => setField<String>('Type', value);

  String? get date => getField<String>('Date');
  set date(String? value) => setField<String>('Date', value);

  double? get tauxDePonctualite => getField<double>('Taux de ponctualité');
  set tauxDePonctualite(double? value) =>
      setField<double>('Taux de ponctualité', value);

  double? get tauxDePonctualiteP => getField<double>('Taux de ponctualité P');
  set tauxDePonctualiteP(double? value) =>
      setField<double>('Taux de ponctualité P', value);
}
