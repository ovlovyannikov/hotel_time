import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Event extends Equatable {
  final String hotelId;
  final String placeId;

  final DateTime dateBegin;
  final DateTime dateEnd;

  final String title;
  final String image;
  final String description;
  final int type;
  bool top;

  final List categoryIds;

  Event(
      {required this.hotelId,
      required this.placeId,
      required this.dateBegin,
      required this.dateEnd,
      required this.title,
      required this.image,
      required this.description,
      required this.type,
      this.top = false,
      required this.categoryIds});

  @override
  List<Object> get props {
    return [
      hotelId,
      placeId,
      dateBegin,
      dateEnd,
      title,
      image,
      description,
      type,
      categoryIds,
    ];
  }
}

final event1 = Event(
  title: "Lorem ipsum sdf aasd fsdf asdfdasf asdf asdfasdf asdfasdfasd",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum asdf as sdf asfd asdf asasdf sdf sd",
  description:
      "Lorem ipsum description lorem ipsum test Lorem ipsum description lorem ipsum test Lorem ipsum description lorem ipsum test Lorem ipsum description lorem ipsum test Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/profile.png",
  type: 1,
  categoryIds: const [0, 1],
);

final event2 = Event(
  title: "Lorem ipsum 2",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 2",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/food.jpeg",
  type: 1,
  categoryIds: const [0],
);

final event3 = Event(
  title: "Lorem ipsum 3",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 1",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/food1.jpeg",
  type: 1,
  categoryIds: const [1],
);

final event4 = Event(
  title: "Lorem ipsum 4",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 1",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/sea.jpeg",
  type: 1,
  top: true,
  categoryIds: const [0],
);

final event5 = Event(
  title: "Lorem ipsum 5",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 1",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/sport.jpeg",
  type: 1,
  categoryIds: const [1],
);

final event6 = Event(
  title: "Lorem ipsum 6",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 1",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/food1.jpeg",
  type: 1,
  categoryIds: const [3],
);

final event7 = Event(
  title: "Lorem ipsum 7",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 1",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/food.jpeg",
  type: 1,
  categoryIds: const [1],
);

final event8 = Event(
  title: "Lorem ipsum 8",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 1",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/sport.jpeg",
  type: 1,
  top: true,
  categoryIds: const [1, 2],
);

final event9 = Event(
  title: "Lorem ipsum 9",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 1",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/sport.jpeg",
  type: 1,
  categoryIds: const [2],
);

final event10 = Event(
  title: "Lorem ipsum 10",
  hotelId: "Sharm All Haih",
  placeId: "Primer town lorem ipsum 1",
  description: "Lorem ipsum description lorem ipsum test",
  dateBegin: DateTime(2023, 9, 5, 12, 30),
  dateEnd: DateTime(2023, 9, 5, 13, 30),
  image: "assets/images/sea.jpeg",
  type: 1,
  categoryIds: const [0, 3],
);

final events = [
  event1,
  event2,
  event3,
  event4,
  event5,
  event6,
  event7,
  event8,
  event9,
  event10,
];
