import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Color(0XFFFBEFD9),
          child: Row(
            children: [
              TextButton.icon(
                  onPressed: () => launch('https://facebook.com'),
                  icon: Image.asset(
                    'assets/images/facebook.png',
                    width: 15,
                    height: 15,
                  ),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () => launch('https://instagram.com'),
                  icon: Image.asset(
                    'assets/images/instagram.png',
                    width: 15,
                    height: 15,
                  ),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () => launch('https://linkedin.com'),
                  icon: Image.asset(
                    'assets/images/linkedin.png',
                    width: 15,
                    height: 15,
                  ),
                  label: Text(''))
            ],
          ),
        )
      ],
    );
  }
}
