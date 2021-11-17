import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouritePlayer extends StatefulWidget {
  const FavouritePlayer({Key? key}) : super(key: key);

  @override
  _FavouritePlayerState createState() => _FavouritePlayerState();
}

class _FavouritePlayerState extends State<FavouritePlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(58, 0.0, 58, 0.0),
              child: Text(
                "Who is your favourite Victory players?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF04764E),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              "Amet minim mollit non deserunt ullamcoei sitaliqua dolor do amet sintelit officia.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 100,
                    width: 120,
                    margin: EdgeInsets.only(top: 100),
                    decoration: BoxDecoration(
                      //color: Colors.green,
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.95),
                          blurRadius: 26,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 153,
                    width: 142,
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "James Arthur",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Your Favourite Player",
                          style: TextStyle(
                            color: Color(0xFF6CAE97),
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 62,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 122.6,
                      width: 120.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18.0),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=871&q=80"),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 44,
            ),
            Text(
              "Swipe To Select",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=871&q=80"),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFCBCBCB),
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                        color: Color(0xFFCBCBCB),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFF04764E),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Text(
                      "CONFIRM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
          ],
        ),
      ),
    );
  }
}
