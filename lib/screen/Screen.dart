import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'Mybotton.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color Themacolor = Color.fromRGBO(57, 58, 59, 1);

  double key_hight = 40;

  double key_width = 50;

  Color key_green = Color.fromRGBO(54, 181, 82, 1);

  Color key_red = Color.fromRGBO(181, 51, 51, 1);

  List<String> letters = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  var userInput = '';
  var answer = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themacolor,
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.white54),
        ),
        toolbarHeight: 80,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(33, 32, 32, 1),
        child: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 14,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.centerRight,
                        child: Text(
                          userInput,
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.centerRight,
                        child: Text(
                          answer,
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.852,
                  decoration: BoxDecoration(
                      color: Themacolor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      GridView.builder(
                        itemCount: letters.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 6),
                        itemBuilder: (context, int index) {
                          if (index == 0) {
                            return MyButton(
                              buttontapped: () {
                                setState(() {
                                  userInput = '';
                                  answer = '0';
                                });
                              },
                              buttonText: letters[index],
                              textColor: key_green,
                            );
                          }

                          // +/- button
                          else if (index == 1) {
                            return MyButton(
                              buttonText: letters[index],
                              textColor: key_green,
                            );
                          }
                          // % Button
                          else if (index == 2) {
                            return MyButton(
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                              buttonText: letters[index],
                              textColor: key_green,
                            );
                          }
                          // Delete Button
                          else if (index == 3) {
                            return MyButton(
                              buttontapped: () {
                                setState(() {
                                  userInput = userInput.substring(
                                      0, userInput.length - 1);
                                });
                              },
                              buttonText: letters[index],
                              textColor: key_green,
                            );
                          }
                          // Equal_to Button
                          else if (index == 18) {
                            return MyButton(
                              buttontapped: () {
                                setState(() {
                                  equalPressed();
                                });
                              },
                              buttonText: letters[index],
                              textColor: key_red,
                            );
                          } else if (index == 4) {
                            return MyButton(
                              buttonText: letters[4],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 5) {
                            return MyButton(
                              buttonText: letters[5],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 6) {
                            return MyButton(
                              buttonText: letters[6],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 8) {
                            return MyButton(
                              buttonText: letters[8],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 9) {
                            return MyButton(
                              buttonText: letters[9],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 10) {
                            return MyButton(
                              buttonText: letters[10],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 12) {
                            return MyButton(
                              buttonText: letters[12],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 13) {
                            return MyButton(
                              buttonText: letters[13],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 14) {
                            return MyButton(
                              buttonText: letters[14],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 16) {
                            return MyButton(
                              buttonText: letters[16],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          } else if (index == 17) {
                            return MyButton(
                              buttonText: letters[17],
                              textColor: key_green,
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                            );
                          }

                          //  other buttons
                          else {
                            return MyButton(
                              buttontapped: () {
                                setState(() {
                                  userInput += letters[index];
                                });
                              },
                              buttonText: letters[index],
                              textColor: isOperator(letters[index])
                                  ? key_red
                                  : Colors.black,
                            );
                          }
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
