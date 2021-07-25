import 'package:flutter/material.dart';
import 'package:portfoliowebapp/widgets/contact_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                    child: Stack(
                  alignment: Alignment.center,
                  children: [Image.asset('background.jpg')],
                )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'I \'m Ashutosh Chaudhari.             \nSoftware developer. \nbuil beautiful website \nusing React & Flutter! \n   ashu.4chaudhari@gmail.com',
                        style: TextStyle(
                          fontSize: 40.5,
                          color: Colors.blueGrey,
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 75, vertical: 60),
                        child: ContactButton(
                            buttonText: 'Drop me a line',
                            icon: Icon(Icons.mail_outline),
                            onPressed: () {}),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.blue,
          child: Column(
            children: [],
          ),
        ))
      ],
    );
  }
}
