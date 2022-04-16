import 'package:flutter/material.dart';

class custom_btn extends StatelessWidget {
  String? btnText;
  Color? btnColor;
  int? flex;
  Function? callback;
  Function? equal;
  double num1 = 0;
  double num2 = 0;
  String op = "";

  custom_btn({
    Key? key,
    @required this.btnText,
    @required this.btnColor,
    this.flex,
    @required this.callback,
    this.equal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex == null ? 1 : flex!,
        child: MaterialButton(
            onPressed: () {
              callback!(btnText);
            },
            child: Text(btnText!,
                style: const TextStyle(color: Colors.black, fontSize: 25)),
            color: btnColor!,
            height: 10,
            padding: const EdgeInsets.all(5),
            splashColor: Colors.orange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))));
  }
}
