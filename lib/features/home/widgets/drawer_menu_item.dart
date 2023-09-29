// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Icon(
        icon,
        color: theme.primaryColor,
        size: 25,
      ),
      title: Text(
        title,
        style: theme.textTheme.labelLarge?.copyWith(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      minLeadingWidth: 20,
      onTap: () => {},
    );
  }
}
