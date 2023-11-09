import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Image Update)] action in Button widget.
  ApiCallResponse? updateImageApi;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for myFirstname widget.
  FocusNode? myFirstnameFocusNode;
  TextEditingController? myFirstnameController;
  String? Function(BuildContext, String?)? myFirstnameControllerValidator;
  // State field(s) for myLastname widget.
  FocusNode? myLastnameFocusNode;
  TextEditingController? myLastnameController;
  String? Function(BuildContext, String?)? myLastnameControllerValidator;
  // State field(s) for myAge widget.
  FocusNode? myAgeFocusNode;
  TextEditingController? myAgeController;
  String? Function(BuildContext, String?)? myAgeControllerValidator;
  // State field(s) for myMarrgStatus widget.
  FocusNode? myMarrgStatusFocusNode;
  TextEditingController? myMarrgStatusController;
  String? Function(BuildContext, String?)? myMarrgStatusControllerValidator;
  // State field(s) for myGender widget.
  FocusNode? myGenderFocusNode;
  TextEditingController? myGenderController;
  String? Function(BuildContext, String?)? myGenderControllerValidator;
  // State field(s) for myCity widget.
  FocusNode? myCityFocusNode;
  TextEditingController? myCityController;
  String? Function(BuildContext, String?)? myCityControllerValidator;
  // State field(s) for myCountry widget.
  FocusNode? myCountryFocusNode;
  TextEditingController? myCountryController;
  String? Function(BuildContext, String?)? myCountryControllerValidator;
  // State field(s) for myHeight widget.
  FocusNode? myHeightFocusNode;
  TextEditingController? myHeightController;
  String? Function(BuildContext, String?)? myHeightControllerValidator;
  // State field(s) for myWeight widget.
  FocusNode? myWeightFocusNode;
  TextEditingController? myWeightController;
  String? Function(BuildContext, String?)? myWeightControllerValidator;
  // State field(s) for myDegree widget.
  FocusNode? myDegreeFocusNode;
  TextEditingController? myDegreeController;
  String? Function(BuildContext, String?)? myDegreeControllerValidator;
  // State field(s) for myInstitute widget.
  FocusNode? myInstituteFocusNode;
  TextEditingController? myInstituteController;
  String? Function(BuildContext, String?)? myInstituteControllerValidator;
  // State field(s) for myProfession widget.
  FocusNode? myProfessionFocusNode;
  TextEditingController? myProfessionController;
  String? Function(BuildContext, String?)? myProfessionControllerValidator;
  // State field(s) for myIncome widget.
  FocusNode? myIncomeFocusNode;
  TextEditingController? myIncomeController;
  String? Function(BuildContext, String?)? myIncomeControllerValidator;
  // State field(s) for myReligion widget.
  FocusNode? myReligionFocusNode;
  TextEditingController? myReligionController;
  String? Function(BuildContext, String?)? myReligionControllerValidator;
  // State field(s) for myCaste widget.
  FocusNode? myCasteFocusNode;
  TextEditingController? myCasteController;
  String? Function(BuildContext, String?)? myCasteControllerValidator;
  // State field(s) for myMotherTongue widget.
  FocusNode? myMotherTongueFocusNode;
  TextEditingController? myMotherTongueController;
  String? Function(BuildContext, String?)? myMotherTongueControllerValidator;
  // Stores action output result for [Backend Call - API (Update Profile)] action in updateProfileButton widget.
  ApiCallResponse? updateProfileapiResult;
  // State field(s) for myfatherName widget.
  FocusNode? myfatherNameFocusNode;
  TextEditingController? myfatherNameController;
  String? Function(BuildContext, String?)? myfatherNameControllerValidator;
  // State field(s) for mymotherName widget.
  FocusNode? mymotherNameFocusNode;
  TextEditingController? mymotherNameController;
  String? Function(BuildContext, String?)? mymotherNameControllerValidator;
  // State field(s) for myfatherProfession widget.
  FocusNode? myfatherProfessionFocusNode;
  TextEditingController? myfatherProfessionController;
  String? Function(BuildContext, String?)?
      myfatherProfessionControllerValidator;
  // State field(s) for myMotherprofession widget.
  FocusNode? myMotherprofessionFocusNode;
  TextEditingController? myMotherprofessionController;
  String? Function(BuildContext, String?)?
      myMotherprofessionControllerValidator;
  // State field(s) for mySiblings widget.
  FocusNode? mySiblingsFocusNode;
  TextEditingController? mySiblingsController;
  String? Function(BuildContext, String?)? mySiblingsControllerValidator;
  // State field(s) for siblingsMartialStatus widget.
  FocusNode? siblingsMartialStatusFocusNode;
  TextEditingController? siblingsMartialStatusController;
  String? Function(BuildContext, String?)?
      siblingsMartialStatusControllerValidator;
  // State field(s) for siblingProfession widget.
  FocusNode? siblingProfessionFocusNode;
  TextEditingController? siblingProfessionController;
  String? Function(BuildContext, String?)? siblingProfessionControllerValidator;
  // State field(s) for siblingEducation widget.
  FocusNode? siblingEducationFocusNode;
  TextEditingController? siblingEducationController;
  String? Function(BuildContext, String?)? siblingEducationControllerValidator;
  // Stores action output result for [Backend Call - API (Family Updates)] action in upfateFamilyinfoButton widget.
  ApiCallResponse? familyInfoUpdateApiResult;
  // State field(s) for mypartnerCaste widget.
  FocusNode? mypartnerCasteFocusNode;
  TextEditingController? mypartnerCasteController;
  String? Function(BuildContext, String?)? mypartnerCasteControllerValidator;
  // State field(s) for mypartnerReligion widget.
  FocusNode? mypartnerReligionFocusNode;
  TextEditingController? mypartnerReligionController;
  String? Function(BuildContext, String?)? mypartnerReligionControllerValidator;
  // State field(s) for mypartnerCity widget.
  FocusNode? mypartnerCityFocusNode;
  TextEditingController? mypartnerCityController;
  String? Function(BuildContext, String?)? mypartnerCityControllerValidator;
  // State field(s) for mypartnerAge widget.
  FocusNode? mypartnerAgeFocusNode;
  TextEditingController? mypartnerAgeController;
  String? Function(BuildContext, String?)? mypartnerAgeControllerValidator;
  // State field(s) for mypartnerFamilyValue widget.
  FocusNode? mypartnerFamilyValueFocusNode;
  TextEditingController? mypartnerFamilyValueController;
  String? Function(BuildContext, String?)?
      mypartnerFamilyValueControllerValidator;
  // State field(s) for mypartnerProfession widget.
  FocusNode? mypartnerProfessionFocusNode;
  TextEditingController? mypartnerProfessionController;
  String? Function(BuildContext, String?)?
      mypartnerProfessionControllerValidator;
  // State field(s) for mypartnerSect widget.
  FocusNode? mypartnerSectFocusNode;
  TextEditingController? mypartnerSectController;
  String? Function(BuildContext, String?)? mypartnerSectControllerValidator;
  // State field(s) for mypartnerHeight widget.
  FocusNode? mypartnerHeightFocusNode;
  TextEditingController? mypartnerHeightController;
  String? Function(BuildContext, String?)? mypartnerHeightControllerValidator;
  // State field(s) for mypartnerWeight widget.
  FocusNode? mypartnerWeightFocusNode;
  TextEditingController? mypartnerWeightController;
  String? Function(BuildContext, String?)? mypartnerWeightControllerValidator;
  // State field(s) for mypartnerMartialStatus widget.
  FocusNode? mypartnerMartialStatusFocusNode;
  TextEditingController? mypartnerMartialStatusController;
  String? Function(BuildContext, String?)?
      mypartnerMartialStatusControllerValidator;
  // Stores action output result for [Backend Call - API (update Partner Information)] action in updatepartnerInfoButton widget.
  ApiCallResponse? partnerInfoApiResults;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    myFirstnameFocusNode?.dispose();
    myFirstnameController?.dispose();

    myLastnameFocusNode?.dispose();
    myLastnameController?.dispose();

    myAgeFocusNode?.dispose();
    myAgeController?.dispose();

    myMarrgStatusFocusNode?.dispose();
    myMarrgStatusController?.dispose();

    myGenderFocusNode?.dispose();
    myGenderController?.dispose();

    myCityFocusNode?.dispose();
    myCityController?.dispose();

    myCountryFocusNode?.dispose();
    myCountryController?.dispose();

    myHeightFocusNode?.dispose();
    myHeightController?.dispose();

    myWeightFocusNode?.dispose();
    myWeightController?.dispose();

    myDegreeFocusNode?.dispose();
    myDegreeController?.dispose();

    myInstituteFocusNode?.dispose();
    myInstituteController?.dispose();

    myProfessionFocusNode?.dispose();
    myProfessionController?.dispose();

    myIncomeFocusNode?.dispose();
    myIncomeController?.dispose();

    myReligionFocusNode?.dispose();
    myReligionController?.dispose();

    myCasteFocusNode?.dispose();
    myCasteController?.dispose();

    myMotherTongueFocusNode?.dispose();
    myMotherTongueController?.dispose();

    myfatherNameFocusNode?.dispose();
    myfatherNameController?.dispose();

    mymotherNameFocusNode?.dispose();
    mymotherNameController?.dispose();

    myfatherProfessionFocusNode?.dispose();
    myfatherProfessionController?.dispose();

    myMotherprofessionFocusNode?.dispose();
    myMotherprofessionController?.dispose();

    mySiblingsFocusNode?.dispose();
    mySiblingsController?.dispose();

    siblingsMartialStatusFocusNode?.dispose();
    siblingsMartialStatusController?.dispose();

    siblingProfessionFocusNode?.dispose();
    siblingProfessionController?.dispose();

    siblingEducationFocusNode?.dispose();
    siblingEducationController?.dispose();

    mypartnerCasteFocusNode?.dispose();
    mypartnerCasteController?.dispose();

    mypartnerReligionFocusNode?.dispose();
    mypartnerReligionController?.dispose();

    mypartnerCityFocusNode?.dispose();
    mypartnerCityController?.dispose();

    mypartnerAgeFocusNode?.dispose();
    mypartnerAgeController?.dispose();

    mypartnerFamilyValueFocusNode?.dispose();
    mypartnerFamilyValueController?.dispose();

    mypartnerProfessionFocusNode?.dispose();
    mypartnerProfessionController?.dispose();

    mypartnerSectFocusNode?.dispose();
    mypartnerSectController?.dispose();

    mypartnerHeightFocusNode?.dispose();
    mypartnerHeightController?.dispose();

    mypartnerWeightFocusNode?.dispose();
    mypartnerWeightController?.dispose();

    mypartnerMartialStatusFocusNode?.dispose();
    mypartnerMartialStatusController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
