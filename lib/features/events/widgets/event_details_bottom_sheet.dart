import 'package:flutter/material.dart';
import 'package:hotel_time/repositories/models/models.dart';
import 'package:hotel_time/ui/ui.dart';
import 'package:provider/provider.dart';

class EventDetailsBottomSheet extends StatelessWidget {
  final Event event;

  const EventDetailsBottomSheet({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    List<String> eventCategoriesList = [];
    String eventCategories = "";
    for (var categoryId in event.categoryIds) {
      var category = categories
          .firstWhere((category) => category.categoryId == categoryId);
      eventCategoriesList.add(category.name);
    }
    eventCategories =
        eventCategoriesList.reduce((value, element) => '$value, $element');

    final theme = Theme.of(context);
    return Provider<Event>.value(
      value: event,
      child: BaseBottomSheet(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Image.asset(
                  event.image,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Text(
                  eventCategories.toString(),
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Text(
                  event.title,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on_outlined,
                      color: theme.primaryColor,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Flexible(
                      child: Text(
                        event.placeId,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.event_available_outlined,
                      color: theme.primaryColor,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "${event.dateBegin.hour.toString()} : ${event.dateBegin.minute.toString()}",
                      style: theme.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_rounded,
                      color: theme.primaryColor,
                      size: 30,
                    ),
                    Text(
                      "${event.dateEnd.hour.toString()} : ${event.dateEnd.minute.toString()}",
                      style: theme.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Text(
                  event.description,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
