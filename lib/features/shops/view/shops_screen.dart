import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_time/generated/l10n.dart';

@RoutePage()
class ShopsScreen extends StatelessWidget {
  const ShopsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(S.of(context).bottomNavigationBarShops),
    ));
  }
}
