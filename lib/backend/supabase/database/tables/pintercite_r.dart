import '../database.dart';

class PinterciteRTable extends SupabaseTable<PinterciteRRow> {
  @override
  String get tableName => 'Pintercite_r';

  @override
  PinterciteRRow createRow(Map<String, dynamic> data) => PinterciteRRow(data);
}

class PinterciteRRow extends SupabaseDataRow {
  PinterciteRRow(super.data);

  @override
  SupabaseTable get table => PinterciteRTable();

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

  String? get partitionDepart => getField<String>('Partition: Départ');
  set partitionDepart(String? value) =>
      setField<String>('Partition: Départ', value);
}
