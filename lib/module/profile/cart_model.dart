import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'installed_card.dart';

class CartModel extends ChangeNotifier {
  final List<InstalledCard> _cards = [];

  UnmodifiableListView<InstalledCard> get cards => UnmodifiableListView(_cards);
  void add(InstalledCard installedCard) {
    _cards.add(installedCard);
    print('added');
    notifyListeners();
  }
  void remove(String _title) {
    for(int i = 0 ; i < _cards.length ; i ++)
      if(_cards[i].title == _title){
        _cards.removeAt(i);
        break;
      }

      
    print('added');
    notifyListeners();
  }
   void removeAll() {
    _cards.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}