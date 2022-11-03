import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_x/styles/colors.dart';

import 'styles/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'ProjectX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NunitoSans',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: green,
          primary: green,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
            style: regular18,
          ),
          const FittedBox(
            child: Text(
              'You have pushed the button this many times:',
              style: bold22,
            ),
          ),
          FittedBox(
            child: titleTextWidget,
          ),
          const FittedBox(
            // fit: BoxFit.fitWidth,
            child: Text(
              'You have pushed the butt dfdsf sfsdfs sfsdf on this man adasd ady times:',
              maxLines: 2,
              // style: semibold20,
            ),
          ),
          const TextField(),
          const SizedBox(height: 8),
          const TextField()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget titleTextWidget = const Text(
    'You have pushed the butt dfdsf sfsdfs sfsdf on thi feew es man adasd ady times:',
    style: bold22,
    maxLines: 2,
    textAlign: TextAlign.center,
  );
}
