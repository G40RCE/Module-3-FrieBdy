import 'package:socialbuddy/create_message.dart';
import 'package:socialbuddy/login_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          "This feature is unavailable for prototype samples only."),
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
                  "Johnson Ricketts",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_1.png")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "No pain, no gain for my everyday morning exercise. Never give up."),
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
        ////2nd 
        Card(
            child: ListTile(
                title: Text(
                  "Ninjaz",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_2.png")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Do you want to show my stunts? Find out more on Ninjaz Show at 7 pm. Only here at XtremeCentral."),
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

        ////3rd 
        Card(
            child: ListTile(
                title: Text(
                  "Dito Telecommunity - Sponsored",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_8.jpg")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Working from home? Let DITO’s 25GB of high-speed data be your partner in getting things done. Get it for just P199 on DITO Telecommunity’s Flagship Store on Lazada. Shop now! - https://www.lazada.com.ph/products/dito-sim-with-25gb-data-i1907082463-s8100214594.html?fbclid=IwAR0IhJ3YO-0x4ng_ftDl5jVg72t-jtU6wfOCRCmdya2e-yZn9930RtpIGT8"),
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
        ////4th 
        Card(
            child: ListTile(
                title: Text(
                  "CNN Philippines - Verified",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_4.jpg")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Singapore will extend its COVID-19 restrictions for another month after the city-state reported 18 new deaths from the disease yesterday, its highest number of the pandemic. LINK: https://t.co/boAXRzZr6g?amp=1"),
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
        ////5th 
        Card(
            child: ListTile(
                title: Text(
                  "Ria Gutierrez",
                ),
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/avatar_icon.png")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text("I'm bored and stuck at home."),
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
        ////6th 
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
                  Text(
                      "There's nothing to change your life. but also your emotions must be clear and calm."),
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
        ////7th 
        Card(
            child: ListTile(
                title: Text(
                  "Jula",
                ),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/person_6.png")),
                subtitle: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "I really much pressure with subjects for deadlines. I can't take this anymore."),
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
