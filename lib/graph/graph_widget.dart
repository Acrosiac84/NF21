import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'graph_model.dart';
export 'graph_model.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({super.key});

  @override
  _GraphWidgetState createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  late GraphModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraphModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 70.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('prevpardate');
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                  child: FutureBuilder<List<MoyenneRow>>(
                    future: MoyenneTable().queryRows(
                      queryFn: (q) => q,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<MoyenneRow> chartMoyenneRowList = snapshot.data!;
                      return SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        height: 230.0,
                        child: FlutterFlowLineChart(
                          data: [
                            FFLineChartData(
                              xData: chartMoyenneRowList
                                  .map((e) => e.date)
                                  .withoutNulls
                                  .toList(),
                              yData: chartMoyenneRowList
                                  .map((e) => e.tauxRP)
                                  .withoutNulls
                                  .toList(),
                              settings: LineChartBarData(
                                color: FlutterFlowTheme.of(context).primary,
                                barWidth: 2.0,
                                isCurved: true,
                                dotData: FlDotData(show: false),
                                belowBarData: BarAreaData(
                                  show: true,
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                            )
                          ],
                          chartStylingInfo: ChartStylingInfo(
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            showBorder: false,
                          ),
                          axisBounds: const AxisBounds(),
                          xAxisLabelInfo: const AxisLabelInfo(
                            title: 'Date',
                            titleTextStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            showLabels: true,
                            labelInterval: 10.0,
                          ),
                          yAxisLabelInfo: const AxisLabelInfo(
                            title: '% Ponctualite',
                            titleTextStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            showLabels: true,
                            labelInterval: 10.0,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: FutureBuilder<List<PglobalRow>>(
                  future: PglobalTable().queryRows(
                    queryFn: (q) => q,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<PglobalRow> chartPglobalRowList = snapshot.data!;
                    return SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: 230.0,
                      child: FlutterFlowLineChart(
                        data: [
                          FFLineChartData(
                            xData: chartPglobalRowList
                                .map((e) => e.date)
                                .withoutNulls
                                .toList(),
                            yData: chartPglobalRowList
                                .map((e) => e.tauxDeRegulariteGlobalP)
                                .withoutNulls
                                .toList(),
                            settings: LineChartBarData(
                              color: FlutterFlowTheme.of(context).primary,
                              barWidth: 2.0,
                              isCurved: true,
                              dotData: FlDotData(show: false),
                              belowBarData: BarAreaData(
                                show: true,
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                          )
                        ],
                        chartStylingInfo: ChartStylingInfo(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          showBorder: false,
                        ),
                        axisBounds: const AxisBounds(),
                        xAxisLabelInfo: const AxisLabelInfo(
                          title: 'Date',
                          titleTextStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          showLabels: true,
                          labelInterval: 10.0,
                        ),
                        yAxisLabelInfo: const AxisLabelInfo(
                          title: '% Ponctualité',
                          titleTextStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          showLabels: true,
                          labelInterval: 10.0,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
