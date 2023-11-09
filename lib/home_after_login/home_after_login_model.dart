import '/backend/api_requests/api_calls.dart';
import '/components/search_results_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'home_after_login_widget.dart' show HomeAfterLoginWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HomeAfterLoginModel extends FlutterFlowModel<HomeAfterLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchMe widget.
  FocusNode? searchMeFocusNode;
  TextEditingController? searchMeController;
  String? Function(BuildContext, String?)? searchMeControllerValidator;
  // State field(s) for cardVieW widget.

  PagingController<ApiPagingParams, dynamic>? cardVieWPagingController;
  Function(ApiPagingParams nextPageMarker)? cardVieWApiCall;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    searchMeFocusNode?.dispose();
    searchMeController?.dispose();

    cardVieWPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<ApiPagingParams, dynamic> setCardVieWController(
    Function(ApiPagingParams) apiCall,
  ) {
    cardVieWApiCall = apiCall;
    return cardVieWPagingController ??= _createCardVieWController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createCardVieWController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(cardVieWSearchGadgetsPage);
  }

  void cardVieWSearchGadgetsPage(ApiPagingParams nextPageMarker) =>
      cardVieWApiCall!(nextPageMarker).then((cardVieWSearchGadgetsResponse) {
        final pageItems = (SearchGadgetsCall.productData(
                  cardVieWSearchGadgetsResponse.jsonBody,
                )! ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        cardVieWPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: cardVieWSearchGadgetsResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForCardVieW({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (cardVieWPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
