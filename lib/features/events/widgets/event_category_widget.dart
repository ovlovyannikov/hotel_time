import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:hotel_time/app_state.dart';
import 'package:hotel_time/repositories/models/event_category.dart';

class EventCategoryWidget extends StatelessWidget {
  final EventCategory category;

  const EventCategoryWidget({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          appState.updateCategoryId(category.categoryId);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? theme.primaryColor : Colors.white,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: isSelected ? theme.focusColor : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              category.icon,
              color: isSelected ? theme.primaryColor : Colors.white,
              size: 30,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              category.name,
              style: isSelected
                  ? theme.textTheme.labelLarge
                  : theme.textTheme.labelSmall?.copyWith(
                      color: Colors.white,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
