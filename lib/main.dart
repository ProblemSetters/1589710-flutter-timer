import 'package:flutter/material.dart';
import 'package:hello_flutter/timer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor mycolor = MaterialColor(
      Color.fromRGBO(4, 176, 80, 1).value,
      <int, Color>{
        50: Color.fromRGBO(4, 176, 80, 0.1),
        100: Color.fromRGBO(4, 176, 80, 0.2),
        200: Color.fromRGBO(4, 176, 80, 0.3),
        300: Color.fromRGBO(4, 176, 80, 0.4),
        400: Color.fromRGBO(4, 176, 80, 0.5),
        500: Color.fromRGBO(4, 176, 80, 0.6),
        600: Color.fromRGBO(4, 176, 80, 0.7),
        700: Color.fromRGBO(4, 176, 80, 0.8),
        800: Color.fromRGBO(4, 176, 80, 0.9),
        900: Color.fromRGBO(4, 176, 80, 1.0),
      },
    );
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: TimerPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                './assets/logo.png',
                width: 40,
              ),
              Container(
                child: Text(
                  'Flutter App',
                  style: TextStyle(
                      color: Color.fromRGBO(27, 169, 76, 1),
                      fontWeight: FontWeight.w700),
                ),
                margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
