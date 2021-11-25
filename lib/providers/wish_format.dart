import 'package:flutter/foundation.dart';

class WishFormat with ChangeNotifier {
  final String name;
  final String wishes;

  WishFormat({required this.name, required this.wishes});
}
