import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MulaqatAuthUser {
  MulaqatAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UsersStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MulaqatAuthUser> mulaqatAuthUserSubject =
    BehaviorSubject.seeded(MulaqatAuthUser(loggedIn: false));
Stream<MulaqatAuthUser> mulaqatAuthUserStream() => mulaqatAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
