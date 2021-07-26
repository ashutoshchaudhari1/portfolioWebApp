import 'package:flutter/material.dart';
import 'package:portfoliowebapp/util/util.dart';
import 'package:portfoliowebapp/widgets/contact_button.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'Building a website',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Building android apps',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': ' email me',
      'image': 'https://picsum.photos/id/1025/400/300'
    },
    {
      'title': 'card list',
      'subtitle': 'Something Good',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                    child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(opacity: 0.5, child: Image.asset('background.jpg')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'I \'m Ashutosh chaudhari . \n          I build beatiful websites \nusing React &Flutter!',
                            style: TextStyle(
                              fontSize: 46.5,
                              color: Colors.blueGrey,
                            )),
                        Text(
                          'contact me-ashu.4chaudhari@gmail.com \ncontact no -9315935338',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 75, vertical: 60),
                            child: ContactButton(
                                buttonText: 'Drop me a line',
                                icon: Icon(Icons.mail_outline),
                                onPressed: () {
                                  launchMailto();
                                }),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
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
                  'My Projects',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: projectsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.black12.withAlpha(23),
                      child: Column(
                        children: [
                          Card(
                            color: Colors.blueAccent,
                            elevation: 3,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(projectsList[index]['title']!),
                                  leading:
                                      Icon(Icons.work, color: Colors.white),
                                  subtitle:
                                      Text(projectsList[index]['subtitle']!),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.network(
                                      projectsList[index]["image"]!),
                                ),
                                SizedBox(
                                  height: 30,
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
          ),
        )
      ],
    );
  }
}
