import 'package:calculation/calculation.dart';
import 'package:flutter/material.dart';

void main() {
  final calc = Calculaton();

//   int plus(int a, int b) {
//     print(a + b);
//     return a + b;
//   };

//   int minus(int a, int b) => a - b;
//   int multiplication(int a, int b) => a * b;
//   double division(double a, double b) => a / b;

// // 色 Colors.pink,Colors.orangeAccent[400],Colors.greenAccent[400],Colors.blue
//   makeButton(String text, Color color, Function funType) {
//     final btn = ElevatedButton(
//         onPressed: () => funType(10, 5),
//         child: Text("$text"),
//         style: ElevatedButton.styleFrom(
//             backgroundColor: color,
//             side: BorderSide(color: Colors.black87),
//             fixedSize: Size(120, 120),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(70),
//             )));
//     return btn;
//   }

//   // それぞれのボタンを生成
//   final plusBtn = makeButton("足し算", Colors.pink, plus);
//   final minusBtn = makeButton("引き算", Colors.orange, minus);
//   final multiplicationBtn =
//       makeButton("掛け算", Colors.green, multiplication);
//   final divisionBtn = makeButton("割り算", Colors.blue, division);

//   final btnRow = Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [plusBtn, minusBtn, multiplicationBtn, divisionBtn]);

//   final btnCon = Container(
//       child: btnRow,
//       alignment: Alignment.topCenter,
//       margin: EdgeInsets.only(top: 150));

//   final textCon = Container(
//       alignment: Alignment.center,
//       margin: EdgeInsets.only(top: 70),
//       child: Text("数字を入力してください", style: TextStyle(fontSize: 24)));

  // final col = Column(children: [btnCon, textCon, calc]);
  final app = MaterialApp(home: Scaffold(body: Center(child: calc)));

  runApp(app);
}
