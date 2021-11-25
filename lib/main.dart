import 'package:flutter/material.dart';
import 'package:hbd_2/providers/wishes_provider.dart';
import 'package:provider/provider.dart';
import 'tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final player = AudioCache();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // player.clearAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => WishesProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Birthday Project',
        theme: ThemeData(
          // primarySwatch: Colors.deepPurple,
          accentColor: Colors.indigo,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                // ignore: deprecated_member_use
                body1: TextStyle(color: Colors.white),
                // ignore: deprecated_member_use
                body2: TextStyle(color: Colors.white),
                // ignore: deprecated_member_use
                title: TextStyle(
                  fontSize: 22,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        initialRoute: '/',
        routes: {'/': (ctx) => TabsScreen()},
        onGenerateRoute: (settings) {},
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => TabsScreen());
        },
      ),
    );
  }
}
