import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _isLoggedIn = prefs.getBool('ff_isLoggedIn') ?? _isLoggedIn;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool _value) {
    _isLoggedIn = _value;
    prefs.setBool('ff_isLoggedIn', _value);
  }

  List<UserCardsStruct> _userCards = [
    UserCardsStruct.fromSerializableMap(jsonDecode(
        '{\"Id\":\"96\",\"firstname\":\"adeel\",\"gender\":\"male\",\"date_of_birth\":\"\",\"email\":\"\",\"country\":\"\",\"city\":\"lahore\",\"phone\":\"0\",\"martial_status\":\"Hello World\",\"number_of_children\":\"Hello World\",\"marriage_duration\":\"0\",\"image\":\"1691062811.jpeg\",\"user_id\":\"56\",\"url\":\"Hello World\",\"biography\":\"Hello World\",\"religion\":\"Hello World\",\"sect\":\"Hello World\",\"height\":\"Hello World\",\"smoking\":\"false\",\"weight\":\"Hello World\",\"language\":\"Hello World\",\"blood_group\":\"Hello World\",\"education\":\"Hello World\",\"profession\":\"Hello World\",\"caste\":\"Hello World\",\"sub_caste\":\"Hello World\",\"income\":\"Hello World\",\"nationality\":\"Hello World\"}'))
  ];
  List<UserCardsStruct> get userCards => _userCards;
  set userCards(List<UserCardsStruct> _value) {
    _userCards = _value;
  }

  void addToUserCards(UserCardsStruct _value) {
    _userCards.add(_value);
  }

  void removeFromUserCards(UserCardsStruct _value) {
    _userCards.remove(_value);
  }

  void removeAtIndexFromUserCards(int _index) {
    _userCards.removeAt(_index);
  }

  void updateUserCardsAtIndex(
    int _index,
    UserCardsStruct Function(UserCardsStruct) updateFn,
  ) {
    _userCards[_index] = updateFn(_userCards[_index]);
  }

  void insertAtIndexInUserCards(int _index, UserCardsStruct _value) {
    _userCards.insert(_index, _value);
  }

  String _ttTelephoneNumber = '';
  String get ttTelephoneNumber => _ttTelephoneNumber;
  set ttTelephoneNumber(String _value) {
    _ttTelephoneNumber = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
