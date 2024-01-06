import 'package:flutter/material.dart';
import 'package:seven/firstPage.dart';
import 'package:seven/bottomNavigation.dart';

void main(List<String> args) {
  runApp(const Music());
}

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          brightness: Brightness.dark,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white10,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
          )),
      theme: ThemeData(
        // primarySwatch: Colors.amber,
        primaryColor: Color.fromARGB(255, 142, 33, 243),
      ),
      home: firstPage(),
      routes: {
        'homepage': (context) => bottonNavigation(),
      },
    );
  }
}
