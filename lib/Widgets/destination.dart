import 'package:flutter/material.dart';

class Destination {
  const Destination(this.title, this.icon);
  final String title;
  final IconData icon;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Dashboard', Icons.dashboard),
  Destination('Discover', Icons.details),
  Destination('Games', Icons.games),
  Destination('Classes', Icons.call_made),
  Destination('Profile', Icons.supervised_user_circle),
];

