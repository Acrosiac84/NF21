import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dash_prev_par_date_rer_model.dart';
export 'dash_prev_par_date_rer_model.dart';

class DashPrevParDateRerWidget extends StatefulWidget {
  const DashPrevParDateRerWidget({
    super.key,
    required this.date,
    required this.ligne,
  });

  final String? date;
  final String? ligne;

  @override
  _DashPrevParDateRerWidgetState createState() =>
      _DashPrevParDateRerWidgetState();
}

class _DashPrevParDateRerWidgetState extends State<DashPrevParDateRerWidget> {
  late DashPrevParDateRerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashPrevParDateRerModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
              context.pushNamed('Home');
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Taux de régularité au ',
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.date,
                        'Erreur',
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                    Text(
                      ' Ligne : ',
                      style: FlutterFlowTheme.of(context).headlineLarge,
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.ligne,
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).headlineLarge,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 20.0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: FutureBuilder<List<PrerRRow>>(
                          future: PrerRTable().querySingleRow(
                            queryFn: (q) => q
                                .eq(
                                  'ligne',
                                  widget.ligne,
                                )
                                .eq(
                                  'Date',
                                  widget.date,
                                ),
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
                            List<PrerRRow> columnPrerRRowList = snapshot.data!;
                            final columnPrerRRow = columnPrerRRowList.isNotEmpty
                                ? columnPrerRRowList.first
                                : null;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: CircularPercentIndicator(
                                    percent: valueOrDefault<double>(
                                      columnPrerRRow?.tauxDePonctualiteP,
                                      0.0,
                                    ),
                                    radius:
                                        MediaQuery.sizeOf(context).width * 0.1,
                                    lineWidth: 20.0,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor: columnPrerRRow!
                                                .tauxDePonctualiteP! >
                                            0.9
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context).tertiary,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).accent4,
                                    center: Text(
                                      valueOrDefault<String>(
                                        columnPrerRRow.tauxDePonctualite
                                            ?.toString(),
                                        'Aucune Données',
                                      ).maybeHandleOverflow(maxChars: 4),
                                      style: FlutterFlowTheme.of(context)
                                          .displayMedium,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(
                                    'RER et Transilien',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
