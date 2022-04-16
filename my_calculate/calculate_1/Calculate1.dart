import 'package:flutter/material.dart';

import '../custom_btn/custom_btn.dart';

class Calculate1 extends StatefulWidget {
  Calculate1({Key? key}) : super(key: key);

  @override
  State<Calculate1> createState() => _Calculate1State();
}

class _Calculate1State extends State<Calculate1> {
  String history = "";
  String content = "";
  double num1 = 0;
  double num2 = 0;
  double x = 0.0;
  String op = "";
  void click(String btnText) {
    if (btnText == "Ac") {
      setState(() {
        history = " ";
        content = "";
      });
    } else if (btnText == "c") {
      setState(() {
        content = " ";
      });
      //----------------------
    } else if (btnText == ".") {
      if (content.contains(".")) {
      } else {
        setState(() {
          content += btnText;
        });
      }
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "/" ||
        btnText == "x" ||
        btnText == "%") {
      op = btnText;
      num1 = double.parse(content);
      /* setState(() {
        history=content.toString();
      });
      content += btnText; */
      setState(() {
        content = "";
        history = num1.toString();
        history += btnText;
      });
    }

//=========================
    else if (btnText == "=") {
      num2 = double.parse(content);
      content = "";

      if (op == "+") {
        setState(() {
          history = (num1 + num2).toString();
        });
      } else if (op == "-") {
        setState(() {
          history = (num1 - num2).toString();
        });
      } else if (op == "/") {
        num2 == 0
            ? {
                setState(() {
                  history = "non valid";
                })
              }
            : setState(() {
                history = (num1 / num2).toString();
              });
      } else if (op == "x") {
        setState(() {
          history = (num1 * num2).toString();
        });
      } else if (op == "%") {
        setState(() {
          history = (num1 % num2).toString();
        });
      }
    } else {
      setState(() {
        content += btnText;
      });
    }
  }

//======================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Center(
          child: Text(
            "Rich Calulator",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              history,
              style: const TextStyle(fontSize: 20),
              textDirection: TextDirection.rtl,
            ),
            const Divider(
              color: Colors.white,
              thickness: 6,
            ),
            Text(
              content,
              style: const TextStyle(fontSize: 50),
              textDirection: TextDirection.rtl,
            ),
            Row(
                //1
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  custom_btn(
                      btnText: "Ac", btnColor: Colors.pink, callback: click),
                  custom_btn(
                      btnText: "c", btnColor: Colors.blueGrey, callback: click),
                  custom_btn(
                      btnText: "%",
                      btnColor: Colors.lightGreenAccent,
                      callback: click),
                  custom_btn(
                      btnText: "/",
                      btnColor: Colors.tealAccent,
                      callback: click),
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              custom_btn(
                btnText: "7",
                btnColor: Colors.yellow,
                callback: click,
              ),
              custom_btn(
                  btnText: "8", btnColor: Colors.redAccent, callback: click),
              custom_btn(btnText: "9", btnColor: Colors.red, callback: click),
              custom_btn(
                  btnText: "x", btnColor: Colors.deepPurple, callback: click),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              custom_btn(btnText: "4", btnColor: Colors.grey, callback: click),
              custom_btn(
                  btnText: "5", btnColor: Colors.yellow, callback: click),
              custom_btn(
                  btnText: "6", btnColor: Colors.yellow, callback: click),
              custom_btn(
                  btnText: "-", btnColor: Colors.yellow, callback: click),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              custom_btn(
                  btnText: "1", btnColor: Colors.yellow, callback: click),
              custom_btn(
                  btnText: "2", btnColor: Colors.yellow, callback: click),
              custom_btn(
                  btnText: "3", btnColor: Colors.yellow, callback: click),
              custom_btn(
                  btnText: "+", btnColor: Colors.yellow, callback: click),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              custom_btn(
                  btnText: "0",
                  btnColor: Colors.yellow,
                  flex: 4,
                  callback: click),
              custom_btn(
                  btnText: ".", btnColor: Colors.yellow, callback: click),
              custom_btn(
                btnText: "=",
                btnColor: Colors.yellow,
                callback: click,
              ),
            ]),
          ]),
    );
  }
}
