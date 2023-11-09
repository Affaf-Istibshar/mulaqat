import '/backend/api_requests/api_calls.dart';
import '/components/navbar_widget.dart';
import '/components/verify_email_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for LoginEmailField widget.
  FocusNode? loginEmailFieldFocusNode;
  TextEditingController? loginEmailFieldController;
  String? Function(BuildContext, String?)? loginEmailFieldControllerValidator;
  String? _loginEmailFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email  is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for LoginPasswordField widget.
  FocusNode? loginPasswordFieldFocusNode;
  TextEditingController? loginPasswordFieldController;
  late bool loginPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      loginPasswordFieldControllerValidator;
  String? _loginPasswordFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Login)] action in LoginButton widget.
  ApiCallResponse? loginResult;
  // State field(s) for SignUpName widget.
  FocusNode? signUpNameFocusNode;
  TextEditingController? signUpNameController;
  String? Function(BuildContext, String?)? signUpNameControllerValidator;
  String? _signUpNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'username is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for SignUPEmailField widget.
  FocusNode? signUPEmailFieldFocusNode;
  TextEditingController? signUPEmailFieldController;
  String? Function(BuildContext, String?)? signUPEmailFieldControllerValidator;
  String? _signUPEmailFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your email';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SignUppasswordField widget.
  FocusNode? signUppasswordFieldFocusNode;
  TextEditingController? signUppasswordFieldController;
  late bool signUppasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      signUppasswordFieldControllerValidator;
  String? _signUppasswordFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your password';
    }

    return null;
  }

  // State field(s) for SignUpConfirmPassField widget.
  FocusNode? signUpConfirmPassFieldFocusNode;
  TextEditingController? signUpConfirmPassFieldController;
  late bool signUpConfirmPassFieldVisibility;
  String? Function(BuildContext, String?)?
      signUpConfirmPassFieldControllerValidator;
  String? _signUpConfirmPassFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm your password';
    }

    return null;
  }

  // State field(s) for SignUpNumberField widget.
  FocusNode? signUpNumberFieldFocusNode;
  TextEditingController? signUpNumberFieldController;
  String? Function(BuildContext, String?)? signUpNumberFieldControllerValidator;
  String? _signUpNumberFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your phone number';
    }

    return null;
  }

  // State field(s) for SignUpGenderField widget.
  FocusNode? signUpGenderFieldFocusNode;
  TextEditingController? signUpGenderFieldController;
  String? Function(BuildContext, String?)? signUpGenderFieldControllerValidator;
  String? _signUpGenderFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your gender';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Register)] action in SignUpButton widget.
  ApiCallResponse? signUpResult;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginEmailFieldControllerValidator = _loginEmailFieldControllerValidator;
    loginPasswordFieldVisibility = false;
    loginPasswordFieldControllerValidator =
        _loginPasswordFieldControllerValidator;
    signUpNameControllerValidator = _signUpNameControllerValidator;
    signUPEmailFieldControllerValidator = _signUPEmailFieldControllerValidator;
    signUppasswordFieldVisibility = false;
    signUppasswordFieldControllerValidator =
        _signUppasswordFieldControllerValidator;
    signUpConfirmPassFieldVisibility = false;
    signUpConfirmPassFieldControllerValidator =
        _signUpConfirmPassFieldControllerValidator;
    signUpNumberFieldControllerValidator =
        _signUpNumberFieldControllerValidator;
    signUpGenderFieldControllerValidator =
        _signUpGenderFieldControllerValidator;
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    loginEmailFieldFocusNode?.dispose();
    loginEmailFieldController?.dispose();

    loginPasswordFieldFocusNode?.dispose();
    loginPasswordFieldController?.dispose();

    signUpNameFocusNode?.dispose();
    signUpNameController?.dispose();

    signUPEmailFieldFocusNode?.dispose();
    signUPEmailFieldController?.dispose();

    signUppasswordFieldFocusNode?.dispose();
    signUppasswordFieldController?.dispose();

    signUpConfirmPassFieldFocusNode?.dispose();
    signUpConfirmPassFieldController?.dispose();

    signUpNumberFieldFocusNode?.dispose();
    signUpNumberFieldController?.dispose();

    signUpGenderFieldFocusNode?.dispose();
    signUpGenderFieldController?.dispose();

    navbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
