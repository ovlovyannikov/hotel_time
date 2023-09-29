import 'package:firebase_auth/firebase_auth.dart';
import 'package:auto_route/auto_route.dart';

Future<void> currentUserStatus(context) async {
  var user = FirebaseAuth.instance.currentUser;
  var autoRouter = AutoRouter.of(context);
  if (user != null) {
    autoRouter.pushNamed('/home');
  }
}

Future<void> signOut(context) async {
  var autoRouter = AutoRouter.of(context);
  await FirebaseAuth.instance.signOut();
  autoRouter.pushNamed('/');
}
