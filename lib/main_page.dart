import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  double lingkaranKecil(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double lingkaranBesar(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -lingkaranKecil(context) / 3,
            top: -lingkaranKecil(context) / 3,
            child: Container(
              height: lingkaranKecil(context),
              width: lingkaranKecil(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)])),
            ),
          ),
          Positioned(
            left: -lingkaranKecil(context) / 4,
            top: -lingkaranKecil(context) / 4,
            child: Container(
              child: Center(
                  child: Text(
                "dribble",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Pacifico", fontSize: 30),
              )),
              height: lingkaranBesar(context),
              width: lingkaranBesar(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF4891)])),
            ),
          ),
          Positioned(
            bottom: -lingkaranKecil(context) / 2,
            right: -lingkaranKecil(context) / 2,
            child: Container(
              height: lingkaranBesar(context),
              width: lingkaranBesar(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E9EE),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFFF4891),
                          size: 30,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFF4891))),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Color(0xFFFF4891),
                        ),
                      )),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xFFFF4891),
                              size: 30,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFF4891))),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Color(0xFFFF4891),
                            ),
                          )),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      "FORGET PASSWORD?",
                      style: TextStyle(color: Color(0xFFFF4891), fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 50,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              splashColor: Colors.purple,
                              child: Center(
                                  child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                        ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        elevation: 0,
                        child: Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png")),
                      ),
                      FloatingActionButton(
                        mini: true,
                        elevation: 0,
                        child: Image(
                            image: NetworkImage(
                                "https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/twitter_circle-512.png")),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DON'T HAVE AN ACCOUNT?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(" SING UP",
                        style: TextStyle(
                          color: Color(0xFFFF4891),
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
