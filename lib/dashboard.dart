// ignore_for_file: unused_import, unused_element

import 'package:apk/main.dart';
import 'package:apk/setting.dart';
import 'package:flutter/material.dart';

import 'profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.more_vert, size: 30, color: Colors.black),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ));
          },
        ),
        title: const Text(
          'GAME STORE',
          style: TextStyle(
              fontFamily: "FontPoppins",
              fontWeight: FontWeight.w700,
              fontSize: 40,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            icon:
                const Icon(Icons.account_circle, size: 30, color: Colors.black),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ));
            },
          )
        ],
      ),
      body: Stack(children: [
        SingleChildScrollView(
            // ignore: sized_box_for_whitespace
            child: Container(
          height: 1200,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                  margin:
                      const EdgeInsets.only(left: 50.0, top: 30.0, right: 50.0),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        "Game Teratas",
                        style: TextStyle(
                            fontFamily: "FontPoppins",
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(
                        flex: 8,
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                            fontFamily: "FontPoppins",
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  )),
              Container(
                height: 200,
                margin:
                    const EdgeInsets.only(left: 30.0, top: 10.0, right: 30.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    game('Mobile Legend', 'images/ml.png'),
                    const SizedBox(width: 20),
                    game('Free Fire', 'images/ff.jpeg'),
                    const SizedBox(width: 20),
                    game('PUBG Mobile', 'images/pubg.png'),
                    const SizedBox(width: 20),
                    game('Apex Mobile', 'images/apex.jpg'),
                  ],
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 22, 212, 155),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Column(children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text(
                        "Cari Game yang akan di install",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "FontPoppins",
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Pilih Game',
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(style: BorderStyle.none),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ])),
              Container(
                  height: 200,
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Cari Berdasarkan Kategori                                   ',
                        style: TextStyle(
                            fontFamily: "FontPoppins",
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                          height: 40,
                          margin: const EdgeInsets.only(
                              left: 10.0, top: 10.0, right: 20.0, bottom: 10.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 22, 212, 155),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text("Aksi",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: "FontPoppins",
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  )),
                              const SizedBox(width: 5),
                              pilihgame('RPG'),
                              const SizedBox(width: 5),
                              pilihgame('Battle Royale'),
                              const SizedBox(width: 5),
                              pilihgame('MMORPG'),
                            ],
                          )),
                      // ignore: sized_box_for_whitespace
                      Container(
                          height: 118,
                          child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                divider(2),
                                jenis('Fruit Ninja', '320 mb'),
                                divider(1),
                                jenis('Shadow Fight 3', '128 mb'),
                                divider(1),
                                jenis('LifeAfter', '3,5 gb'),
                                divider(1),
                                jenis('Xenowerk', '146 mb'),
                                divider(1),
                                jenis('Grimvalor', '624 mb'),
                              ]))
                    ],
                  )),
            ],
          ),
        )),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }

  Divider divider(double p) {
    return Divider(
      height: 0,
      thickness: p,
      indent: 10,
      endIndent: 20,
      color: const Color.fromARGB(255, 22, 212, 155),
    );
  }

  Container jenis(String text1, text2) {
    return Container(
        margin: const EdgeInsets.only(
            left: 10.0, top: 5.0, right: 20.0, bottom: 5.0),
        child: Row(
          children: <Widget>[
            Text(text1,
                style: const TextStyle(
                  fontFamily: "FontPoppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
            const Spacer(flex: 8),
            Text(text2,
                style: const TextStyle(
                  fontFamily: "FontPoppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
            const Icon(Icons.gamepad)
          ],
        ));
  }

  Container pilihgame(String text) {
    return Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color.fromARGB(255, 22, 212, 155),
            width: 2,
          ),
        ),
        child: Center(
          child: Text(text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: "FontPoppins",
                fontSize: 15,
                fontWeight: FontWeight.w700,
              )),
        ));
  }

  Container game(String text, image) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          border: Border.all(
            color: const Color.fromARGB(255, 22, 212, 155),
            width: 2,
          )),
      child: Column(
        children: [
          Image.asset(image, fit: BoxFit.cover, width: 200, height: 150),
          Text(text,
              style: const TextStyle(
                  fontFamily: "FontPoppins",
                  fontSize: 25,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
