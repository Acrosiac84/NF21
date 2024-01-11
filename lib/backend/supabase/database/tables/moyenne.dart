import '../database.dart';

class MoyenneTable extends SupabaseTable<MoyenneRow> {
  @override
  String get tableName => 'Moyenne';

  @override
  MoyenneRow createRow(Map<String, dynamic> data) => MoyenneRow(data);
}

class MoyenneRow extends SupabaseDataRow {
  MoyenneRow(super.data);

  @override
  SupabaseTable get table => MoyenneTable();

  String? get date => getField<String>('Date');
  set date(String? value) => setField<String>('Date', value);

  double? get tauxR => getField<double>('tauxR');
  set tauxR(double? value) => setField<double>('tauxR', value);

  double? get tauxRP => getField<double>('tauxR_p');
  set tauxRP(double? value) => setField<double>('tauxR_p', value);
}
