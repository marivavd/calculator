import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(title: Text('Calculator', style: TextStyle(fontSize: 60, color: Colors.redAccent)),
      centerTitle: true,),
      backgroundColor: Colors.blueGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Container(padding: EdgeInsets.only(top:30), alignment: Alignment.topCenter,
          child: Text('2 + 2 = 4', style: TextStyle(fontSize: 40))),
          Container(padding: EdgeInsets.fromLTRB(10, 80, 10, 30),
            child: Row(children: [SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('1', style: TextStyle(fontSize: 24)),),),
              SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('2', style: TextStyle(fontSize: 24)),),),
              SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('3', style: TextStyle(fontSize: 24)),),),
              SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('+', style: TextStyle(fontSize: 24)),),), ],)),
          Container(padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Row(children: [SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('4', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('5', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('6', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('-', style: TextStyle(fontSize: 24)),),), ],)),
          Container(padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Row(children: [SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('7', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('8', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('9', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('/', style: TextStyle(fontSize: 24)),),), ],)),
          Container(padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Row(children: [SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('0', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('C', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('=', style: TextStyle(fontSize: 24)),),),
                SizedBox(width: 90, height: 80, child: ElevatedButton(onPressed: () {}, child: Text('*', style: TextStyle(fontSize: 24)),),), ],))]
      ),
    );
  }
}
