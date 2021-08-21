import 'package:flutter/material.dart';
import 'package:universes_of_adventure/presentation/app_icons.dart';
import 'package:universes_of_adventure/presentation/style.dart';
import 'package:universes_of_adventure/univPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(20),
                  child: IconButton(
                    icon: Icon(AppIcons.fourdots),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 30),
                  child: Text(
                    'Hi Adventurer!',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 10),
                  child: Text(
                    'Let\'s discover the unkown!',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
                buildCategories(),
                buildList(),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 0),
                  child: Text(
                    'Useful Informations',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, top: 10, bottom: 20, right: 40),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus fermentum, tellus massa pretium dignissim enim volutpat, tortor aliquam. Nunc, a et iaculis ullamcorper. Netus dui diam fermentum posuere facilisis malesuada in. Ultrices arcu sed nibh consequat eget tellus nulla faucibus risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus fermentum, tellus massa pretium dignissim enim volutpat, tortor aliquam. Nunc, a et iaculis ullamcorper. Netus dui diam fermentum posuere facilisis malesuada in. Ultrices arcu sed nibh consequat eget tellus nulla faucibus risus. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus fermentum, tellus massa pretium dignissim enim volutpat, tortor aliquam. Nunc, a et iaculis ullamcorper. Netus dui diam fermentum posuere facilisis malesuada in. Ultrices arcu sed nibh consequat eget tellus nulla faucibus risus.',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }

  buildCategories() {
    return Container(
      padding: EdgeInsets.only(left: 0, top: 40),
      child: SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 120, right: 20),
            physics: BouncingScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return buildCatgName(categories, index);
            },
          )),
    );
  }

  Widget buildCatgName(List<String> l, int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Colors.black
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(
                        20) // use instead of BorderRadius.all(Radius.circular(20))
                    ),
                child: Text(
                  l[index],
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.grey.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      );

  buildList() {
    return Container(
      padding: EdgeInsets.only(left: 0, top: 40),
      child: SizedBox(
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 80, right: 20),
            physics: BouncingScrollPhysics(),
            itemCount: content.length,
            itemBuilder: (BuildContext context, int index) {
              return buildListContent(content, index);
            },
          )),
    );
  }

  buildListContent(List<Map> content, int index) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              pageBuilder: (_, __, ___) => UnivPage(
                pos: index,
              ),
            ),
          );
        },
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 220,
                  height: 320,
                  child: Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(150)),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        gradient: LinearGradient(
                          colors: [content[index]['color'], ecardColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(bottom: 50, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              content[index]['name'],
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              content[index]['desc'],
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Expand ',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 12,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Hero(
                    tag: 'desired-univ$index',
                    child: Image.asset(content[index]['iconPath']))
              ],
            ),
          ],
        ));
  }
}
