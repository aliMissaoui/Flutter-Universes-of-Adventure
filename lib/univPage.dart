import 'package:flutter/material.dart';
import 'package:universes_of_adventure/presentation/style.dart';

class UnivPage extends StatefulWidget {
  final int pos;

  const UnivPage({Key? key, required this.pos}) : super(key: key);

  @override
  _UnivPageState createState() => _UnivPageState(this.pos);
}

class _UnivPageState extends State<UnivPage> {
  final int pos;
  _UnivPageState(this.pos);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.grey.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(20),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Expanded(
                    child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  children: [
                    buildUnivSpace(context),
                    SizedBox(
                      height: 20,
                    ),
                    buildContent(),
                    SizedBox(
                      height: 60,
                    ),
                    buildButton(),
                  ],
                ))
              ],
            ),
          ),
        ));
  }

  buildUnivSpace(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100)),
              gradient: LinearGradient(
                colors: [content[pos]['color'], ecardColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(left: 165, top: 15),
            child: Hero(
                tag: 'desired-univ$pos',
                child: Image.asset(content[pos]['iconPath'])))
      ],
    );
  }

  buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content[pos]['name'],
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            content[pos]['desc'],
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          Text(
            txt,
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  buildButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Take a tour!',
          style: TextStyle(
              fontFamily: 'Montserrat',
              letterSpacing: 1.0,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
      ),
    );
  }
}
