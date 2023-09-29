import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EventCategory extends Equatable {
  final int categoryId;
  final String name;
  final IconData icon;

  const EventCategory(
      {required this.categoryId, required this.name, required this.icon});

  @override
  List<Object> get props => [categoryId, name, icon];
}

const allCat = EventCategory(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

const seaCat = EventCategory(
  categoryId: 1,
  name: "Sea",
  icon: Icons.wb_sunny_outlined,
);

const sportCat = EventCategory(
  categoryId: 2,
  name: "Sport",
  icon: Icons.sports_football_outlined,
);

const foodCat = EventCategory(
  categoryId: 3,
  name: "Food",
  icon: Icons.fastfood_outlined,
);

final categories = [
  allCat,
  seaCat,
  sportCat,
  foodCat,
];
