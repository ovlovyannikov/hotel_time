import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_time/app_state.dart';
import 'package:hotel_time/repositories/models/event.dart';
import 'package:hotel_time/repositories/models/event_category.dart';
import 'package:provider/provider.dart';

import 'package:hotel_time/features/events/widgets/widgets.dart';

@RoutePage()
class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Consumer<AppState>(
                    builder: (context, appState, _) => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          for (final category in categories)
                            EventCategoryWidget(
                              category: category,
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Consumer<AppState>(
                    builder: (context, appState, _) => Column(
                      children: <Widget>[
                        for (final event in events.where((e) => e.categoryIds
                            .contains(appState.selectedCategoryId)))
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                context: context,
                                builder: (context) => Padding(
                                  padding: const EdgeInsets.only(top: 60),
                                  child: EventDetailsBottomSheet(event: event),
                                ),
                              );
                            },
                            child: EventWidget(
                              event: event,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
