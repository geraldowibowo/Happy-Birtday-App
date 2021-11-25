import 'package:flutter/material.dart';
import 'package:hbd_2/providers/wish_format.dart';

class WishesFromFriends extends StatelessWidget {
  final List<WishFormat> fetchedWishes;

  WishesFromFriends(this.fetchedWishes);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 350,
      // color: Colors.amber,
      child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                title: Text(fetchedWishes[index].name),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(fetchedWishes[index].wishes),
                ),
              ),
            );
          },
          itemCount: fetchedWishes.length),
    );
  }
}
