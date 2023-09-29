import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_time/core/functions/user_functions.dart';
import 'package:hotel_time/generated/l10n.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      title: Text(S.of(context).appTitle),
      centerTitle: true,
      backgroundColor: theme.primaryColor,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: S.of(context).drawerOpenLabel,
          );
        },
      ),
      actions: [
        IconButton(
          onPressed: () async {
            signOut(context);
            context.router.pushNamed('/');
          },
          icon: const Icon(Icons.logout),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
