import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_time/generated/l10n.dart';

@RoutePage()
class ChartScreen extends StatelessWidget {
  const ChartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(S.of(context).bottomNavigationBarChart),
    ));
  }
}
