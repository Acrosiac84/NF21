import '../database.dart';

class PrerRTable extends SupabaseTable<PrerRRow> {
  @override
  String get tableName => 'Prer_r';

  @override
  PrerRRow createRow(Map<String, dynamic> data) => PrerRRow(data);
}

class PrerRRow extends SupabaseDataRow {
  PrerRRow(super.data);

  @override
  SupabaseTable get table => PrerRTable();

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

  String? get ligne => getField<String>('ligne');
  set ligne(String? value) => setField<String>('ligne', value);
}
