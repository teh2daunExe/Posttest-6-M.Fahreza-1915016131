import 'package:flutter/material.dart';

import 'landingPage.dart';

class detailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Skill"),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      "Hunter",
                    ),
                    Text(
                      "wind",
                    ),
                    Text(
                      "dark/teleport",
                    ),
                    Text(
                      "Decoy",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => landingPage()));
                },
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
