import 'package:flutter/material.dart';
import 'package:portfoliowebapp/util/util.dart';
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
                            horizontal: 75, vertical: 125),
                        child: ContactButton(
                            buttonText: 'Drop me a line',
                            icon: Icon(Icons.mail_outline),
                            onPressed: () {
                              launchMailto();
                            }),
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
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'My projects',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.black.withAlpha(23),
                    child: Column(
                      children: [
                        Card(
                          color: Colors.blueAccent,
                          elevation: 3,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text('Hello there!'),
                                leading: Icon(
                                  Icons.work,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ))
      ],
    );
  }
}
