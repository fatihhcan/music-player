import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.cyan.shade50,
      body: mainContainer(),
    ));
  }

  Container mainContainer() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          nowPlayingText(),
          SizedBox(height: 70),
          mainImages(),
          SizedBox(
            height: 50,
          ),
          playList(),
        ],
      ),
    );
  }

  Column playList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
      children: <Widget>[
        ListTile(
          title: Text(
            "Akıbet",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            "Duman",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.play_arrow, size: 40),
        ),
        ListTile(
          title: Text(
            "We Will Rock You",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            "Queen",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.play_arrow, size: 40),
        ),
        ListTile(
          title: Text(
            "Altalena",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            "Mottet",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing:
              Icon(Icons.play_arrow, size: 40, color: Colors.cyan.shade200),
        ),
        ListTile(
          title: Text(
            "Jocelyn Flores",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            "XXXTENTACION",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.play_arrow, size: 40),
        ),
        ListTile(
          title: Text(
            "Numb",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            "Linkin Park",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.play_arrow, size: 40),
        ),
      ],
    );
  }

  Row mainImages() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 160,
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.favorite),
            backgroundColor: Colors.cyan.shade200,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            'assets/images/music.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 151,
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.more_horiz),
            backgroundColor: Colors.cyan.shade200,
          ),
        ),
      ],
    );
  }

  Center nowPlayingText() {
    return Center(
      child: Text(
        "Mottet - Altalena",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.grey.shade500),
      ),
    );
  }
}
