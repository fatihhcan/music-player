import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: buildScaffold(),
    );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      body: mainContainer(),
    );
  }

  Container mainContainer() {
    return Container(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                children: leadingButtons(),
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: centerTextandImages(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> centerTextandImages() {
    return <Widget>[
      Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35.0),
          child: Image.asset(
            'assets/images/music.jpg',
            width: 220,
            height: 220,
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Text("Altalena",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
      Text("Mottet",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      Slider(
        min: 0,
        max: 50,
        value: 12,
        activeColor: Colors.cyan.shade600,
        onChanged: (value) {},
      ),
      Row(
        children: <Widget>[
          Center(
            child: Row(
              children: bottomButtons(),
            ),
          ),
        ],
      ),
    ];
  }

  List<Widget> bottomButtons() {
    return <Widget>[
      SizedBox(
        width: 115,
      ),
      FloatingActionButton(
        backgroundColor: Colors.cyan.shade100,
        onPressed: () {},
        child: Icon(
          Icons.skip_previous,
        ),
        elevation: 4,
      ),
      SizedBox(
        width: 15,
      ),
      FloatingActionButton(
        backgroundColor: Colors.cyan.shade600,
        onPressed: () {},
        child: Icon(Icons.play_circle_filled),
        elevation: 4,
      ),
      SizedBox(
        width: 15,
      ),
      FloatingActionButton(
        backgroundColor: Colors.cyan.shade100,
        onPressed: () {},
        child: Icon(Icons.skip_next),
        elevation: 4,
      ),
    ];
  }

  List<Widget> leadingButtons() {
    return <Widget>[
      SizedBox(
        width: 20,
      ),
      FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.cyan.shade200,
      ),
      SizedBox(
        child: Center(
          child: Text(
            "PLAYING NOW",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.grey.shade500),
          ),
        ),
        width: 260,
      ),
      FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.menu),
        backgroundColor: Colors.cyan.shade200,
      )
    ];
  }
}
