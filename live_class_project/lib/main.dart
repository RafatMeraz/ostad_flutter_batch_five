import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Todo app',
    //   home: HomeScreen(),
    //   theme: ThemeData(
    //     // primarySwatch: MaterialColor(
    //     //   0xFF2C0432FF,
    //     //   const {
    //     //     50: const Color(0xFF2C0432FF),
    //     //     100: const Color(0xFF2C0432FF),
    //     //     200: const Color(0xFF2C0432FF),
    //     //     300: const Color(0xFF2C0432FF),
    //     //     400: const Color(0xFF2C0432FF),
    //     //     500: const Color(0xFF2C0432FF),
    //     //     600: const Color(0xFF2C0432FF),
    //     //     700: const Color(0xFF2C0432FF),
    //     //     800: const Color(0xFF2C0432FF),
    //     //     900: const Color(0xFF2C0432FF)
    //     //   },
    //     // ),
    //     // primaryColor: Colors.purple,
    //     // primaryColorDark: Colors.pink,
    //     // primaryColorLight: Colors.pink.shade500,
    //     brightness: Brightness.light,
    //     elevatedButtonTheme: ElevatedButtonThemeData(
    //       style: ElevatedButton.styleFrom(
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(0)
    //           ),
    //           backgroundColor: Colors.green
    //       ),
    //     ),
    //     scaffoldBackgroundColor: Colors.grey,
    //     appBarTheme: AppBarTheme(
    //       backgroundColor: Colors.purple,
    //       titleTextStyle: TextStyle(
    //         fontWeight: FontWeight.bold,
    //         fontSize: 18,
    //       ),
    //       centerTitle: true
    //     ),
    //     // TODO - Set floating action button theme data
    //   ),
    //   darkTheme: ThemeData(
    //     brightness: Brightness.dark,
    //     primarySwatch: Colors.pink,
    //     // elevatedButtonTheme: ElevatedButtonThemeData(
    //     //   style: ElevatedButton.styleFrom(
    //     //       shape: RoundedRectangleBorder(
    //     //           borderRadius: BorderRadius.circular(30),
    //     //         side: BorderSide(width: 2, color: Colors.red)
    //     //       ),
    //     //       backgroundColor: Colors.green
    //     //   ),
    //     // ),
    //   ),
    //   themeMode: ThemeMode.light,
    // );
    return CupertinoApp(
      home: CupertinoHomeScreen(),
    );
  }
}

class CupertinoHomeScreen extends StatelessWidget {
  const CupertinoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home'),
        backgroundColor: Colors.grey,
        leading: Icon(CupertinoIcons.home, size: 18,)
      ),
      child: Column(
        children: [
          CupertinoButton(child: Text('Tap here'), onPressed: () {}),
          CupertinoButton.filled(child: Text('Tap here'), onPressed: () {}),
          ElevatedButton(child: Text('Tap here'), onPressed: () {}),
        ],
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  TextEditingController searchTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {}, child: Text('Tap here'),),
          ElevatedButton( style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
              ),
              backgroundColor: Colors.white,
            textStyle: TextStyle(
              color: Colors.white
            )
          ),
            onPressed: () {}, child: Text('Tap here'),),
          ElevatedButton(onPressed: () {}, child: Text('Tap here'),),
          ElevatedButton(onPressed: () {}, child: Text('Tap here'),),
          ElevatedButton(onPressed: () {}, child: Text('Tap here'),),

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
