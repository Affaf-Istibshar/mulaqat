import '/backend/api_requests/api_calls.dart';
import '/components/no_search_result_found_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_results_widget.dart' show SearchResultsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class SearchResultsModel extends FlutterFlowModel<SearchResultsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for searchGrid widget.

  PagingController<ApiPagingParams, dynamic>? searchGridPagingController;
  Function(ApiPagingParams nextPageMarker)? searchGridApiCall;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    searchGridPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<ApiPagingParams, dynamic> setSearchGridController(
    Function(ApiPagingParams) apiCall,
  ) {
    searchGridApiCall = apiCall;
    return searchGridPagingController ??= _createSearchGridController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createSearchGridController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(searchGridSearchGadgetsPage);
  }

  void searchGridSearchGadgetsPage(ApiPagingParams nextPageMarker) =>
      searchGridApiCall!(nextPageMarker)
          .then((searchGridSearchGadgetsResponse) {
        final pageItems = (SearchGadgetsCall.productData(
                  searchGridSearchGadgetsResponse.jsonBody,
                )! ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        searchGridPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: searchGridSearchGadgetsResponse,
                )
              : null,
        );
      });
}
