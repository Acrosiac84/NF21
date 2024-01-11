import '../database.dart';

class PterTable extends SupabaseTable<PterRow> {
  @override
  String get tableName => 'Pter';

  @override
  PterRow createRow(Map<String, dynamic> data) => PterRow(data);
}

class PterRow extends SupabaseDataRow {
  PterRow(super.data);

  @override
  SupabaseTable get table => PterTable();

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
