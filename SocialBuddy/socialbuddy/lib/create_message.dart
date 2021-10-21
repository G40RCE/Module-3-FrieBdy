import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialbuddy/dashboard.dart';
import 'package:socialbuddy/updated_dashboard.dart';

class ComposeMessage extends StatefulWidget {
  const ComposeMessage({Key? key}) : super(key: key);

  @override
  _ComposeMessageState createState() => _ComposeMessageState();
}

class _ComposeMessageState extends State<ComposeMessage> {
  TextEditingController _message = TextEditingController();

  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_sharp, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
            title: Text('Compose Message'),
            centerTitle: true,
            actions: [
              ButtonBarTheme(
                data: ButtonBarThemeData(buttonPadding: EdgeInsets.all(20)),
                child: TextButton(
                    child: Text("Post"),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Color(0xFF61B5FF),
                      primary: Colors.black,
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: isEnabled
                        ? () async {
                            final snackBar = SnackBar(
                                content: Text(
                                    "Message posted successfully"));

                            ScaffoldMessenger.of(context)
                              ..removeCurrentSnackBar()
                              ..showSnackBar(snackBar);

                            await Future.delayed(Duration(seconds: 1));

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    HomePage2(message: _message.text)));
                          }
                        : null),
              )
            ]),
        body: Column(children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/person_5.jpg'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: TextFormField(
                maxLines: 10,
                maxLength: 240,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: 'What can you say about yourself?',
                  fillColor: Colors.white,
                  filled: true,
                ),
                cursorColor: Colors.black,
                controller: _message,
                onChanged: (text) {
                  setState(() {
                    if (text.length > 0) {
                      isEnabled = true;
                    } else {
                      isEnabled = false;
                    }
                  });
                }),
          )
        ]));
  }
}
