import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hotel_time/constants/constants.dart';
import 'generated/l10n.dart';
import 'package:hotel_time/router/router.dart';
import 'package:hotel_time/ui/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const HotelTimeApp());
}

class HotelTimeApp extends StatefulWidget {
  const HotelTimeApp({super.key});

  @override
  State<HotelTimeApp> createState() => _HotelTimeAppState();
}

class _HotelTimeAppState extends State<HotelTimeApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: themeData,
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('en'),
      title: appTitle,
    );
  }
}
