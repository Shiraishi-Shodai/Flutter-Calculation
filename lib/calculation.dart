import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculaton extends StatelessWidget {
  const Calculaton({super.key});

  @override
  Widget build(BuildContext context) {
    // 入力した値を管理するコントローラー
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    // 入力する値1
    final num1 = TextField(
        controller: num1Controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        enabled: true,
        decoration: const InputDecoration(
          icon: Icon(Icons.face),
          hintText: '数字を入力してください',
          labelText: '数字 * ',
        ));
    // onChanged: ((value) => print(value)));

    // 入力する値2
    final num2 = TextField(
        controller: num2Controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(
          icon: Icon(Icons.face),
          labelText: '数字 * ',
        ));
    // onChanged: ((value) => print(value)));

    final btn = ElevatedButton(
      onPressed: () {
        debugPrint('num1の値: ${num1Controller.text}');
        debugPrint('num2の値: ${num2Controller.text}');
      },
      child: Text("表示する"),
    );

    final rowTest = Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [num1, num2, btn]);

    return Container(
      width: 500,
      height: 600,
      child: rowTest,
    );
  }
}
