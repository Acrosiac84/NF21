import '../database.dart';

class PterRTable extends SupabaseTable<PterRRow> {
  @override
  String get tableName => 'Pter_r';

  @override
  PterRRow createRow(Map<String, dynamic> data) => PterRRow(data);
}

class PterRRow extends SupabaseDataRow {
  PterRRow(super.data);

  @override
  SupabaseTable get table => PterRTable();

  String? get type => getField<String>('Type');
  set type(String? value) => setField<String>('Type', value);

  String? get date => getField<String>('Date');
  set date(String? value) => setField<String>('Date', value);

  double? get tauxDeRegularite => getField<double>('Taux de régularité');
  set tauxDeRegularite(double? value) =>
      setField<double>('Taux de régularité', value);

  double? get tauxDeRegulariteP => getField<double>('Taux de régularité P');
  set tauxDeRegulariteP(double? value) =>
      setField<double>('Taux de régularité P', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);
}
