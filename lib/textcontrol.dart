import 'package:flutter/material.dart';
import './text.dart';
class TextControl extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return TextControlState();
  }
}

class TextControlState extends State<TextControl> {
  String textHolder = 'You have not completed your first assignment!';
  void changeText() {
    setState(() {
      textHolder =
          'Congrats! You have successfully completed your first assignment!';
    });
    // print('Congrats! You have successfully completed your first assignment!');
  }
  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () {
                    changeText();
                  },
                  child: const Button('This is my first Assignment')),
              Text(
                textHolder,
                style: const TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
              )
            ],
          );
  }

}
