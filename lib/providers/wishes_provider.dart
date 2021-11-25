import 'dart:convert';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'wish_format.dart';

class WishesProvider with ChangeNotifier {
  List<WishFormat> _wishesDisplayed = [];

  List<WishFormat> get wishesDisplayed {
    return [..._wishesDisplayed];
  }

  Future<void> fetchAndSetWishes(String storedName) async {
    final url = Uri.parse(
        'https://hbdgeorge-21374-default-rtdb.asia-southeast1.firebasedatabase.app/$storedName.json');
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      // ignore: unnecessary_null_comparison
      if (extractedData == null) {
        return;
      }
      final List<WishFormat> loadedWishes = [];
      extractedData.forEach((wishId, wishesData) {
        loadedWishes.add(
            WishFormat(name: wishesData['name'], wishes: wishesData['wishes']));
      });

      _wishesDisplayed = loadedWishes;
    } catch (error) {
      throw error;
    }
    notifyListeners();
  }

  Future<void> addWishes(WishFormat wish, String storedName) async {
    final url = Uri.parse(
        'https://hbdgeorge-21374-default-rtdb.asia-southeast1.firebasedatabase.app/$storedName.json');
    try {
      await http.post(url,
          body: json.encode({
            'name': wish.name,
            'wishes': wish.wishes,
          }));
      final newWish = WishFormat(name: wish.name, wishes: wish.wishes);
      _wishesDisplayed.add(newWish);
    } catch (error) {
      throw error;
    }
    notifyListeners();
  }
}
