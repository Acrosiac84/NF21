import '../database.dart';

class PinterciteTable extends SupabaseTable<PinterciteRow> {
  @override
  String get tableName => 'Pintercite';

  @override
  PinterciteRow createRow(Map<String, dynamic> data) => PinterciteRow(data);
}

class PinterciteRow extends SupabaseDataRow {
  PinterciteRow(super.data);

  @override
  SupabaseTable get table => PinterciteTable();

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
