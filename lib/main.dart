import 'package:calculation/calculation.dart';
import 'package:flutter/material.dart';

void main() {
  // final calc = Calculaton();

  int plus(int a, int b) => a + b;
  int minus(int a, int b) => a - b;
  int multiplication(int a, int b) => a * b;
  double division(double a, double b) => a / b;

  // ボタンを作るための情報を定義
  Map<String, Color> btnFrameWorks = {
    "plus": Colors.pink,
    "minus": Colors.orange,
    "multiplication": Colors.green,
    "division": Colors.blue
  };
  // それぞれのボタンを生成
  List<ElevatedButton> btnList = [];
  btnFrameWorks.forEach((key, value) {
    btnList.add(ElevatedButton(
        onPressed: () => {
          print('私は$keyをします')
        },
        child: Text("$key"),
        style: ElevatedButton.styleFrom(
            backgroundColor: value,
            side: BorderSide(color: Colors.black87),
            fixedSize: Size(120, 120),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(70),
            ))));
  });

  final row = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [btnList[0], btnList[1], btnList[2], btnList[3]]
    );

  final app = MaterialApp(
    title: 'Flutter Calculation',
    home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter Calculation")),
      body: Center(child: row)
    )
  );
  runApp(app);
}
