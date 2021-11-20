import 'package:flutter/material.dart';
import 'package:sports_club/models/next_match_model.dart';
import 'package:sports_club/screens/home.dart';
import 'package:sports_club/widgets/fab_app_bar.dart';

class NextMatchDetails extends StatefulWidget {
  //NextMatchDetails({Key? key, this.nextMatchModel}) : super(key: key);

  @override
  State<NextMatchDetails> createState() => _NextMatchDetailsState();
}

class _NextMatchDetailsState extends State<NextMatchDetails> {
  int? _currentIndex = 0;

  final List<Widget> _children = <Widget>[
    // SignUp(),
    // Login(),
    // SkipperOne(),
    // StepperOne(),
  ];

  void _selectedTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<NextMatchModel> nextMatchModel = [];

  _NextMatchDetailsState() {
    nextMatchModel.add(
      NextMatchModel(
          team1: "Red Devils",
          score1: 1,
          team2: "V. Greens",
          score2: 3,
          date: "9 Jan 2021",
          time: "19.45"),
    );
    nextMatchModel.add(
      NextMatchModel(
          team2: "Red Devils",
          score2: 2,
          team1: "V. Greens",
          score1: 3,
          date: "21 Nov 2021",
          time: "21.45"),
    );
    nextMatchModel.add(
      NextMatchModel(
          team1: "Red Devils",
          score1: 1,
          team2: "V. Greens",
          score2: 5,
          date: "9 Jul 2021",
          time: "19.45"),
    );
    nextMatchModel.add(
      NextMatchModel(
          team1: "Red Devils",
          score1: 1,
          team2: "V. Greens",
          score2: 1,
          date: "9 Jan 2021",
          time: "19.45"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Match Details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(28.0, 28.0, 28.0, 0.0),
                  child: Container(
                    height: 440,
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 0.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 15,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.store_mall_directory_outlined),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          "Devils Arena Stadium",
                          style: TextStyle(
                            color: Color(0xFF595959),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "9 May 2021",
                          style: TextStyle(
                            color: Color(0xFF595959),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "t2.png",
                              height: 65,
                              width: 55,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Kick Off(GMT+3",
                                  style: TextStyle(
                                    color: Color(0xFF8C95B6),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "19.45",
                                  style: TextStyle(
                                    color: Color(0xFF8C95B6),
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              "t1.png",
                              height: 65,
                              width: 55,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Red D.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Victory G.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(8, 15, 8, 0),
                          margin: EdgeInsets.only(top: 28),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color(0xFF29B986),
                                Color(0xFF26CA90),
                                Color(0xFF3FC194),
                                Color(0xFF319471),
                                Color(0xFF1F966C),
                                Color(0xFF348B6C),
                                Color(0xFF065539),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Match Countdown",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "02",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    " : ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "08",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    " : ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "47",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    " : ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "01",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Days",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Hrs",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Mins",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Secs",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 20.0, 0.0, 13.0),
              child: Text(
                "Matchs",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: nextMatchModel.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color:
                                    nextMatchModel[index].team1 == "Red Devils"
                                        ? Color(0xFFF02626)
                                        : Color(0xFF04764E),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Text(
                                "${nextMatchModel[index].score1}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "${nextMatchModel[index].team1}",
                                    style: TextStyle(
                                      color: nextMatchModel[index].team1 ==
                                              "Red Devils"
                                          ? Color(0xFFF02626)
                                          : Color(0xFF04764E),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "vs",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "${nextMatchModel[index].team2}",
                                    style: TextStyle(
                                      color: nextMatchModel[index].team2 ==
                                              "Red Devils"
                                          ? Color(0xFFF02626)
                                          : Color(0xFF04764E),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color:
                                    nextMatchModel[index].team2 == "Red Devils"
                                        ? Color(0xFFF02626)
                                        : Color(0xFF04764E),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Text(
                                "${nextMatchModel[index].score2}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 12,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              "${nextMatchModel[index].date}",
                              style: TextStyle(
                                color: Color(0xFF234567),
                                fontSize: 11,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              "${nextMatchModel[index].time}",
                              style: TextStyle(
                                color: Color(0xFF234567),
                                fontSize: 11,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      //bottom navigation
      extendBody: true,
      bottomNavigationBar: FabBottomAppBar(
        centerItemText: '',
        color: Colors.black,
        backgroundColor: Colors.white,
        selectedColor: Color(0xFF04764E),
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FabBottomAppBarItem(iconData: Icons.home_outlined, text: 'News'),
          FabBottomAppBarItem(
              iconData: Icons.calendar_today_outlined, text: 'Features'),
          FabBottomAppBarItem(iconData: Icons.house_outlined, text: 'Shop'),
          FabBottomAppBarItem(
              iconData: Icons.airplane_ticket_outlined, text: 'Tickets'),
        ],
      ),
      //floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Image.asset(
          "t2.png",
          height: 35,
          width: 29,
        ),
      ),
    );
  }
}
