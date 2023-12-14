import 'package:flutter/material.dart';
import 'package:flutterclaculator/SplashScreen.dart';
import 'package:flutterclaculator/TextField.dart';
import 'package:flutterclaculator/elevated.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rohan Shrestha',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var asign = '';
  var result = '';
  late List<VoidCallback> work = [
    AC,
    DEL,
    MOD,
    DIV,
    SEVEN,
    EIGHT,
    NINE,
    MUL,
    FOUR,
    FIVE,
    SIX,
    SUB,
    ONE,
    TWO,
    THREE,
    ADD,
    TWOzero,
    ZERO,
    DOT,
    EQUAL
  ];

  var num = [
    'AC',
    'DEL',
    '%',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '00',
    '0',
    '.',
    '='
  ];
  void AC() {
    asign = '';
    setState(() {});
  }

  void DEL() {
    asign = asign.substring(0, asign.length - 1);
    setState(() {});
  }

  void MOD() {
    asign += '%';
    setState(() {});
  }

  void DIV() {
    asign += '/';
    setState(() {});
  }

  void SEVEN() {
    asign += '7';
    setState(() {});
  }

  void EIGHT() {
    asign += '8';
    setState(() {});
  }

  void NINE() {
    asign += '9';
    setState(() {});
  }

  void MUL() {
    asign += '*';
    setState(() {});
  }

  void FOUR() {
    asign += '4';
    setState(() {});
  }

  void FIVE() {
    asign += '5';
    setState(() {});
  }

  void SIX() {
    asign += '6';
    setState(() {});
  }

  void SUB() {
    asign += '-';
    setState(() {});
  }

  void ONE() {
    asign += '1';
    setState(() {});
  }

  void TWO() {
    asign += '2';
    setState(() {});
  }

  void THREE() {
    asign += '3';
    setState(() {});
  }

  void ADD() {
    asign += '+';
    setState(() {});
  }

  void TWOzero() {
    asign += '00';
    setState(() {});
  }

  void ZERO() {
    asign += '0';
    setState(() {});
  }

  void DOT() {
    asign += '.';
    setState(() {});
  }

  void EQUAL() {
    Parser p = Parser();
    Expression exp = p.parse(asign);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    result = eval.toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: SizedBox(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 30.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                            height: 100,
                            child: Text("${asign}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Colors.black))),
                        SizedBox(
                            child: Text("$result",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Colors.black)))
                      ]),
                ),
              ),
              Container(
                height: 525,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: (elevated(
                            onpressed: work[index],
                            name: '${num[index]}',
                            color: (index < 4 ||
                                    index == 7 ||
                                    index == 11 ||
                                    index == 15 ||
                                    index == 19)
                                ? Colors.orange
                                : Colors.white)),
                      ),
                    );
                  },
                  itemCount: num.length,
                ),
              )
            ],
          ),
        ));
  }
}
