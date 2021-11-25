import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hbd_2/birthday_data.dart';

import 'package:carousel_slider/carousel_slider.dart';

class Galleries extends StatefulWidget {
  const Galleries({Key? key}) : super(key: key);

  @override
  _GalleriesState createState() => _GalleriesState();
}

class _GalleriesState extends State<Galleries> {
  // int _picNumber = 1;
  // String _picFormat = '.gif';
  // void _changePicture() {
  //   if (_picNumber < 2) {
  //     setState(() {
  //       _picNumber++;
  //       _picFormat = '.gif';
  //     });
  //   } else if (_picNumber < jumlahGambarDiGalleries) {
  //     setState(() {
  //       _picNumber++;
  //       _picFormat = '.jpeg';
  //     });
  //   } else if (_picNumber == jumlahGambarDiGalleries) {
  //     setState(() {
  //       _picNumber = 1;
  //       _picFormat = '.gif';
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Column(children: [
      SizedBox(
        height: 10,
      ),
      CarouselSlider(
        options: CarouselOptions(
          height: mediaQuery.size.height * 0.5,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
          enlargeCenterPage: true,
        ),
        items: ngetesDoang.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                // width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(i), fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(15),
                  // color: Colors.white.withOpacity(0.5)
                ),
              );
            },
          );
        }).toList(),
      ),
      SizedBox(
        height: 20,
      )
    ]);

    // Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(20),
    //         child: Text(
    //           'TAP THIS PICTURE!',
    //           style: TextStyle(
    //             fontSize: 36,
    //             fontWeight: FontWeight.w400,
    //             fontFamily: 'ERKN',
    //             color: Colors.teal[900],
    //           ),
    //         ),
    //       ),
    //       // ignore: deprecated_member_use
    //       FlatButton(
    //         onPressed: () => _changePicture(),
    //         child: Container(
    //           color: Colors.cyan[50],
    //           padding: EdgeInsets.all(7),
    //           child: Image.asset(
    //             'assets/galleries/$_picNumber' + _picFormat,
    //             width: mediaQuery.size.width * 0.8,
    //             height: mediaQuery.size.height * 0.7,
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
