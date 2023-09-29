// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_time/constants/constants.dart';
import 'package:hotel_time/features/home/widgets/drawer_menu_item.dart';
import 'package:hotel_time/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var userInfo = FirebaseAuth.instance.currentUser;
    return Drawer(
      elevation: 1.5,
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            margin: const EdgeInsets.only(bottom: 0.0),
            decoration: BoxDecoration(
              color: theme.primaryColor,
            ),
            accountName: Text(userInfo?.displayName ?? ''),
            accountEmail: Text(userInfo?.phoneNumber ?? ''),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
              DrawerMenuItem(
                icon: Icons.person_2_outlined,
                title: S.of(context).drawerProfile,
              ),
              DrawerMenuItem(
                icon: Icons.wallet_travel_outlined,
                title: S.of(context).drawerTravels,
              ),
              DrawerMenuItem(
                icon: Icons.document_scanner_outlined,
                title: S.of(context).drawerDocs,
              ),
              DrawerMenuItem(
                icon: Icons.flight,
                title: S.of(context).drawerFlyRaces,
              ),
              DrawerMenuItem(
                icon: Icons.settings_applications_outlined,
                title: S.of(context).drawerSettings,
              ),
            ]),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              height: 50,
              child: Text(
                S.of(context).appVersion,
                style: theme.textTheme.labelSmall,
              )),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            height: 50,
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                  style: theme.textTheme.labelMedium,
                  text: S.of(context).appPoweredBy,
                ),
                TextSpan(
                  style: theme.textTheme.labelLarge,
                  text: "L.O.",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      Uri url = Uri.parse(poweredByUrl);
                      var urllaunchable = await canLaunchUrl(url);
                      if (urllaunchable) {
                        await launchUrl(url);
                      } else {
                        Navigator.of(context).pop();
                        var snackBarURL = SnackBar(
                          content: Text(S.of(context).urlCantOpen),
                          elevation: 10,
                          behavior: SnackBarBehavior.floating,
                          margin: const EdgeInsets.all(5),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBarURL);
                      }
                    },
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
