import '../database.dart';

class PtgvTable extends SupabaseTable<PtgvRow> {
  @override
  String get tableName => 'PTGV';

  @override
  PtgvRow createRow(Map<String, dynamic> data) => PtgvRow(data);
}

class PtgvRow extends SupabaseDataRow {
  PtgvRow(super.data);

  @override
  SupabaseTable get table => PtgvTable();

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
}
