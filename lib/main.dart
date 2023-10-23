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
  String text = "";
  String first_number = "";
  String second_number = "";
  String operation = "";

  void form_text(){
    text = first_number + operation + second_number;
  }
  void write_numbers(String number){
    if (operation == ""){
      first_number += number;}
    else{
      second_number += number;}
    form_text();
  }
  void write_operation(String my_operation){
    operation = my_operation;
    form_text();
  }
  void del_operation(){
    if (operation == ""){
      if (first_number != ""){
        first_number = first_number.substring(0, first_number.length - 1);
      }
    }
    else if (second_number == ""){
      operation = "";
    }
    else{
      second_number = second_number.substring(0, second_number.length - 1);
    }
    form_text();
  }
  void calculation(){
    if (first_number != "" && second_number != "" && operation != ""){
      double result = 0;
      double first = double.parse(first_number);
      double second = double.parse(second_number);
      if (operation == "+"){
        result = first + second;
      }
      else if (operation == '-'){
        result = first - second;
      }
      else if (operation == '*'){
        result = first * second;
      }
      else if (second != 0){
        if (operation == '/'){
          result = first / second;
        }
        else{
          result = first % second;
        }
      }
      if (second_number != "0"){
        first_number = result.toString();
        second_number = "";
        operation = "";
        form_text();}
    }
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Expanded(child: Container(alignment: Alignment.topCenter,
          child: Text(text, style: TextStyle(fontSize: 70, color: Colors.redAccent)))),
          Expanded(child: Container(
            child: Row(children: [Expanded(child:SizedBox(height: 80, child: ElevatedButton(onPressed: () {setState(() {write_numbers("1");});}, child: Text('1', style: TextStyle(fontSize: 24)),),)),
              Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("2");});}, child: Text('2', style: TextStyle(fontSize: 24)),),)),
              Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("3");});}, child: Text('3', style: TextStyle(fontSize: 24)),),)),
              Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_operation("+");});}, child: Text('+', style: TextStyle(fontSize: 24)),),)), ],))),
          Expanded(
          child:Container(
              child: Row(children: [Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("4");});}, child: Text('4', style: TextStyle(fontSize: 24)),),)),
                Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("5");});}, child: Text('5', style: TextStyle(fontSize: 24)),),)),
                Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("6");});}, child: Text('6', style: TextStyle(fontSize: 24)),),)),
                Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_operation("-");});}, child: Text('-', style: TextStyle(fontSize: 24)),),)), ],))),
          Expanded(
          child: Container(
              child: Row(children: [Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("7");});}, child: Text('7', style: TextStyle(fontSize: 24)),),)),
                Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("8");});}, child: Text('8', style: TextStyle(fontSize: 24)),),)),
                Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("9");});}, child: Text('9', style: TextStyle(fontSize: 24)),),)),
                Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState((){write_operation("*");});}, child: Text('*', style: TextStyle(fontSize: 24)),),)), ],))),
          Expanded(
              child: Container(
                  child: Row(children: [Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {write_numbers("0");});}, child: Text('0', style: TextStyle(fontSize: 24)),),)),
                    Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState((){write_operation("%");});}, child: Text('%', style: TextStyle(fontSize: 24)),),)),
                    Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState(() {calculation();});}, child: Text('=', style: TextStyle(fontSize: 24)),),)),
                    Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState((){write_operation("/");});}, child: Text('/', style: TextStyle(fontSize: 24)),),)), ],))),
          Expanded(
          child: Container(
              child: Row(children: [Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState((){del_operation();});}, child: Text('del', style: TextStyle(fontSize: 24)),),)),
                Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {setState((){text = "";first_number = "";second_number = "";operation = "";});}, child: Text('C', style: TextStyle(fontSize: 24)),),)),
                Expanded(child:SizedBox(height: 80,child: ElevatedButton(onPressed: () {write_numbers(".");}, child: Text('.', style: TextStyle(fontSize: 24)),),)),],)))]
      ),
      ),
    );
  }
}
