import '../database.dart';

class PTGVRTable extends SupabaseTable<PTGVRRow> {
  @override
  String get tableName => 'PTGV_r';

  @override
  PTGVRRow createRow(Map<String, dynamic> data) => PTGVRRow(data);
}

class PTGVRRow extends SupabaseDataRow {
  PTGVRRow(super.data);

  @override
  SupabaseTable get table => PTGVRTable();

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

  String? get ligne => getField<String>('ligne');
  set ligne(String? value) => setField<String>('ligne', value);
}
