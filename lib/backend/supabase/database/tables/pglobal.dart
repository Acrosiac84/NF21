import '../database.dart';

class PglobalTable extends SupabaseTable<PglobalRow> {
  @override
  String get tableName => 'Pglobal';

  @override
  PglobalRow createRow(Map<String, dynamic> data) => PglobalRow(data);
}

class PglobalRow extends SupabaseDataRow {
  PglobalRow(super.data);

  @override
  SupabaseTable get table => PglobalTable();

  double? get tauxDeRegulariteGlobal =>
      getField<double>('Taux de régularité global');
  set tauxDeRegulariteGlobal(double? value) =>
      setField<double>('Taux de régularité global', value);

  double? get tauxDeRegulariteGlobalP =>
      getField<double>('Taux de régularité global P');
  set tauxDeRegulariteGlobalP(double? value) =>
      setField<double>('Taux de régularité global P', value);

  String? get type => getField<String>('Type');
  set type(String? value) => setField<String>('Type', value);

  String? get date => getField<String>('Date');
  set date(String? value) => setField<String>('Date', value);
}
