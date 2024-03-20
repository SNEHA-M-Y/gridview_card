import 'package:flutter/material.dart';

class homepg extends StatefulWidget {
  const homepg({super.key});

  @override
  State<homepg> createState() => _homepgState();
}

class _homepgState extends State<homepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 2),
      itemCount: pictures.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                pictures[index],
              ),
              Text(
                data[index],
                style: TextStyle(fontSize: 20),
              ),
              Text(
                subtext[index],
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          margin: EdgeInsets.all(5),
        );
      },
    )
    );
  }
}

List pictures = [
  "images/knokingat.webp",
  "images/peace.jpg",
  "images/desertoflost.jpg",
  "images/suspicious.webp",
  "images/quite.jpg",
  "images/lovemoredeeply.jpeg",
];
List data = [
  "Knocking At",
  "Peace",
  "Desert Of Lost",
  "Suspicious",
  "Quite",
  "Love More Deeply"
];
List subtext = [
  "7 Music Song(s)",
  "6 Music Song(s)",
  "10 Music Song(s)",
  "1 Music Song(s)",
  "11 Music Song(s)",
  "13 Music Song(s)",
];
