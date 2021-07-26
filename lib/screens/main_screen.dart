import 'package:flutter/material.dart';
import 'package:portfoliowebapp/util/util.dart';
import 'package:portfoliowebapp/widgets/body.dart';
import 'package:portfoliowebapp/widgets/button_row.dart';
import 'package:portfoliowebapp/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              foregroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C5103AQF1yfJmXtzLvw/profile-displayphoto-shrink_400_400/0/1568488904072?e=1632355200&v=beta&t=Zwc9uuzKPNkUYZPHc2B5WQVgT_Nkde3GbQBx4L23eGQ'),
            ),
            Text(
              'AshuD.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'contact me',
            icon: Icon(Icons.send_sharp),
            onPressed: () {
              launchMailto();
            },
          )
        ],
      ),
      body: Stack(children: [
        Body(),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(48),
            child: SizedBox(
              height: 59,
              child: ButtonRow(),
            ),
          ),
        )
      ]),
    );
  }
}
