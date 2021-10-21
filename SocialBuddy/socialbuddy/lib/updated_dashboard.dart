import 'package:socialbuddy/create_message.dart';
import 'package:socialbuddy/login_details.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  String message;
  HomePage2({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('FrieBdy'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp, color: Colors.white),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Logout"),
                    content: Text("Are you sure you want to logout?"),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginDetails()),
                            );
                          },
                          child: Text("Ok")),
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancel")),
                    ],
                  );
                });
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_sharp, color: Colors.white),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Feature Unavaliable"),
                      content: Text(
                          "This feature is unavaliable for prototype sample only."),
                      actions: [
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Continue")),
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Card(
            child: ListTile(
                title: Text(
                  "James Matthew",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_5.jpg")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text("$message"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.comment),
                        Icon(Icons.favorite_border),
                        Icon(Icons.share),
                        Icon(Icons.download),
                      ])
                ]))),
        ////2nd Tweet
        Card(
            child: ListTile(
                title: Text(
                  "Angelie",
                ),
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/avatar_icon.png")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Is anyone need to help in finishing these assessments?."),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.comment),
                        Icon(Icons.favorite_border),
                        Icon(Icons.share),
                      ])
                ]))),

        ////3rd Tweet
        Card(
            child: ListTile(
                title: Text(
                  "Globe At Home - Sponsored",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_7.png")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Hoping to unwind from work? Carry na to binge-watch your fave series using an Ultra-Fast MyFi device! To make the most out of your free time, mag-load na ng HomeSurf199 via the GlobeOne app."),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.comment),
                        Icon(Icons.favorite_border),
                        Icon(Icons.share),
                      ])
                ]))),
        ////4th Tweet
        Card(
            child: ListTile(
                title: Text(
                  "DITO Telecommunity - Verified",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_8.jpg")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Download the DITO APP now via http://bit.ly/downloadDITOapp"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.comment),
                        Icon(Icons.favorite_border),
                        Icon(Icons.share),
                      ])
                ]))),
        ////5th Tweet
        Card(
            child: ListTile(
                title: Text(
                  "ABS-CBN News - Verified",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_9.jpg")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "DOH hihintayin muna ang EUA ng Molnupiravir. Mga detalye nito: https://t.co/ktRFwMfhgV?amp=1"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.comment),
                        Icon(Icons.favorite_border),
                        Icon(Icons.share),
                      ])
                ]))),
        ////6th Tweet
        Card(
            child: ListTile(
                title: Text(
                  "Johnnn",
                ),
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/avatar_icon.png")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "I'm so lazy yesterday, enjoy watching Netflix for late nights."),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.comment),
                        Icon(Icons.favorite_border),
                        Icon(Icons.share),
                      ])
                ]))),
        ////7th Tweet
        Card(
            child: ListTile(
                title: Text(
                  "Joshua",
                ),
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/avatar_icon.png")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "I'm passing out last night. Because of too pressure for the academics within this week."),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.comment),
                        Icon(Icons.favorite_border),
                        Icon(Icons.share),
                      ])
                ]))),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ComposeMessage()),
          );
        },
        child: Icon(Icons.message_sharp, color: Colors.black),
        backgroundColor: Colors.white,
      ),
    );
  }
}
