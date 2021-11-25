import 'package:flutter/material.dart';
import 'package:hbd_2/home_screen/home_screen.dart';
import 'profile/profile.dart';
import 'quiz/quiz_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'birthday_data.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //default color
  int _selectedPageIndex = 0;
  String _wallpaper = wallpaperBG1;
  Color _whiteningColor = whiteningColorBG1;
  final player = AudioCache();
  //set wallpaper here
  bool _initState = false;

  @override
  void initState() {
    super.initState();
    _initState = true;
  }

  void _selectPage(int index) {
    setState(() {
      if ((_initState == true && index == 1) ||
          (_initState == true && index == 2)) {
        player.loop('sound/lalabirthday.wav', volume: 0.05);
        _initState = false;
      }
      _selectedPageIndex = index;
      switch (index) {
        case 0:
          {
            _wallpaper = wallpaperBG1;
            _whiteningColor = whiteningColorBG1;
          }
          break;
        case 1:
          {
            _wallpaper = wallpaperBG2;
            _whiteningColor = whiteningColorBG2;
          }
          break;
        case 2:
          {
            _wallpaper = wallpaperBG3;
            _whiteningColor = whiteningColorBG3;
          }
          break;
        default:
          {
            _wallpaper = wallpaperBG1;
            _whiteningColor = whiteningColorBG1;
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_wallpaper),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Container(
          color: _whiteningColor,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              onTap: _selectPage,
              backgroundColor: Colors.white.withOpacity(0.65),
              unselectedItemColor: Colors.black.withOpacity(0.4),
              selectedItemColor: Colors.black,
              currentIndex: _selectedPageIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    // ignore: deprecated_member_use
                    title: Text('Home')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.play_arrow),
                    // ignore: deprecated_member_use
                    title: Text('Quiz')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    // ignore: deprecated_member_use
                    title: Text('Profile')),
              ],
            ),
            // body: _pages[_selectedPageIndex]['page'],
            body: IndexedStack(
              children: [
                HomeScreen(),
                QuizScreen(),
                Profile(),
              ],
              index: _selectedPageIndex,
            ),
          ),
        ));
  }
}
