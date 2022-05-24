import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_reza_1915016131/counterController.dart';
import 'package:posttest6_reza_1915016131/main.dart';
import 'package:posttest6_reza_1915016131/mainPage.dart';

import "mainPage.dart";

class formpage extends StatefulWidget {
  @override
  State<formpage> createState() => _formpageState();
}

class _formpageState extends State<formpage> {
  String namachar = "", skill = "", role = "";

  final namacharCtrl = TextEditingController();
  final skillCtrl = TextEditingController();
  final roleCtrl = TextEditingController();
  final counterController mycounterController = Get.put(counterController());
  final ctrlDescription = TextEditingController();
  String Description = '';

  void dispose() {
    namacharCtrl.dispose();
    skillCtrl.dispose();
    roleCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Character - Agent"),
        flexibleSpace: Obx(
          () => Container(
            color: mycounterController.switchValue.value
                ? Color.fromARGB(121, 177, 22, 22)
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
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 719,
                child: TextField(
                  controller: namacharCtrl,
                  decoration: InputDecoration(
                    hintText: "Nama character",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 719,
                child: TextField(
                  controller: skillCtrl,
                  decoration: InputDecoration(
                    hintText: "Skill character",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 719,
                child: TextField(
                  controller: roleCtrl,
                  decoration: InputDecoration(
                    hintText: "Role Character",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  final mySnackBar = SnackBar(
                    content: Text(
                      "Agent Berhasil Ditambahkan",
                    ),
                    duration: Duration(seconds: 2),
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.blue,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => mainPage()));
                  setState(() {
                    namachar = namacharCtrl.text;
                    skill = skillCtrl.text;
                    role = roleCtrl.text;
                  });
                },
                child: Text("Submit"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green.shade900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
