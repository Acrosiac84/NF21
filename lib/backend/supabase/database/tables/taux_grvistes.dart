import '../database.dart';

class TauxGrvistesTable extends SupabaseTable<TauxGrvistesRow> {
  @override
  String get tableName => 'Taux grévistes';

  @override
  TauxGrvistesRow createRow(Map<String, dynamic> data) => TauxGrvistesRow(data);
}

class TauxGrvistesRow extends SupabaseDataRow {
  TauxGrvistesRow(super.data);

  @override
  SupabaseTable get table => TauxGrvistesTable();

  DateTime? get date => getField<DateTime>('Date');
  set date(DateTime? value) => setField<DateTime>('Date', value);

  double? get tauxDeGrevistesAuSeinDeLaPopulationConcerneeParLeP =>
      getField<double>(
          'Taux de grévistes au sein de la population concernée par le p');
  set tauxDeGrevistesAuSeinDeLaPopulationConcerneeParLeP(double? value) =>
      setField<double>(
          'Taux de grévistes au sein de la population concernée par le p',
          value);
}
