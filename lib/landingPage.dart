import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_reza_1915016131/counterController.dart';
import 'package:posttest6_reza_1915016131/main.dart';
import 'package:posttest6_reza_1915016131/detailPage.dart';
import 'package:posttest6_reza_1915016131/mainPage.dart';
import 'package:posttest6_reza_1915016131/formPage.dart';

class landingPage extends StatelessWidget {
  final counterController mycounterController = Get.put(counterController());
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Char game"),
        backgroundColor: Colors.grey,
        flexibleSpace: Obx(
          () => Container(
            color: mycounterController.switchValue.value
                ? Color.fromARGB(210, 222, 15, 15)
                : Color.fromARGB(223, 19, 216, 203),
          ),
        ),
        actions: [
          Icon(Icons.dark_mode),
          Obx(
            () => Switch(
              value: mycounterController.switchValue.value,
              onChanged: (newValue) {
                mycounterController.switchValue.value = newValue;
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              child: Text(
                "Valorant",
                style: TextStyle(color: Color(0xffE6D5B8)),
              ),
            ),
            ListTile(
              title: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
                title: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Char',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => mainPage()));
                }),
            ListTile(
              title: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.density_medium_rounded,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Jett",
                style: TextStyle(fontSize: 12, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage("jet.jpg")),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => formpage()));
              },
              child: Text('add'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green, primary: Colors.white),
            ),
            SizedBox(height: 25),
            Container(
              child: Text(
                "yoru",
                style: TextStyle(fontSize: 12, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage("yoru.jpg")),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => formpage()));
              },
              child: Text('add'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green, primary: Colors.white),
            ),
            SizedBox(height: 25),
            Container(
              width: 320,
              height: 100,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.brown.shade300,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Skill Char\t\t\t\t\t\t\t\t\t\t\t\t\t",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => detailPage()));
                    },
                    child: Text(
                      "look all",
                      style: TextStyle(color: Colors.red),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 2, 25, 44)),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              height: 100,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.brown.shade300,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Role Char\t\t\t\t\t\t\t\t\t\t\t\t\t",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => mainPage()));
                    },
                    child: Text(
                      "Look All",
                      style: TextStyle(color: Colors.red),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 2, 25, 44)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
