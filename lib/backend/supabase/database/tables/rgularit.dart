import '../database.dart';

class RgularitTable extends SupabaseTable<RgularitRow> {
  @override
  String get tableName => 'Régularité';

  @override
  RgularitRow createRow(Map<String, dynamic> data) => RgularitRow(data);
}

class RgularitRow extends SupabaseDataRow {
  RgularitRow(super.data);

  @override
  SupabaseTable get table => RgularitTable();

  String? get source => getField<String>('Source');
  set source(String? value) => setField<String>('Source', value);

  String? get date => getField<String>('Date');
  set date(String? value) => setField<String>('Date', value);

  double? get tauxR => getField<double>('tauxR');
  set tauxR(double? value) => setField<double>('tauxR', value);

  double get tauxRP => getField<double>('tauxR_p')!;
  set tauxRP(double value) => setField<double>('tauxR_p', value);
}
