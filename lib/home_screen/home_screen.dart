import 'package:flutter/material.dart';
import 'package:hbd_2/birthday_data.dart';
import 'package:hbd_2/home_screen/galleries.dart';
import 'package:hbd_2/home_screen/wishes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: Drawer(
          child: Center(
              child: Text(
        'Coming soon',
        style: TextStyle(color: Colors.black),
      ))),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Birthday App for $birthdayName',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white.withOpacity(0.7),
        shadowColor: Colors.transparent,
      ),
      body: ListView(
        children: [Galleries(), Wishes()],
      ),
    );
  }
}
