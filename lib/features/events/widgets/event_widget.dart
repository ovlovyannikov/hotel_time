import 'package:flutter/material.dart';

import 'package:hotel_time/repositories/models/event.dart';

class EventWidget extends StatelessWidget {
  final Event event;

  const EventWidget({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 7),
      child: Material(
        child: ListTile(
          tileColor: event.top ? theme.focusColor : Colors.white,
          leading: Image.asset(
            event.image,
            height: 50,
            width: 50,
            fit: BoxFit.fitWidth,
          ),
          title: Text(
            event.title.length > 50
                ? '${event.title.substring(0, 50)}...'
                : event.title,
            style: theme.textTheme.titleMedium,
          ),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: theme.primaryColor,
                size: 20,
              ),
              const SizedBox(
                width: 3,
              ),
              Flexible(
                child: Text(
                  event.placeId.length > 50
                      ? '${event.placeId.substring(0, 50)}...'
                      : event.placeId,
                  style: event.top
                      ? theme.textTheme.titleSmall!
                          .copyWith(color: theme.primaryColor)
                      : theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                "${event.dateBegin.hour.toString()} : ${event.dateBegin.minute.toString()}",
                style: theme.textTheme.titleMedium,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: theme.primaryColor,
                size: 15,
              ),
              Text(
                "${event.dateEnd.hour.toString()} : ${event.dateEnd.minute.toString()}",
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
