import 'package:flutter/material.dart';
import 'package:hbd_2/birthday_data.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          FittedBox(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: mediaQuery.size.height * 0.1,
              child: Center(
                child: Text(
                  headerUcapan,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 85,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(profilePicture),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  completeName,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Ig: $instagram',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              ucapan,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 25),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Credits By:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              appCredits,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            Text(
              '- See you next update -',
              style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
            )
          ]),
        ],
      ),
    );
  }
}
