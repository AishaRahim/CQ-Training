// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nav.dart';
import 'page1.dart';
import 'page2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[50],
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text(
                  'Discover',
                  style: GoogleFonts.acme(
                      textStyle: const TextStyle(fontSize: 30)),
                ),
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 15),
                ], borderRadius: BorderRadius.circular(30)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/hm.png',
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Text('Categories',style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 35))),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.pink[50],
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.pink[100],
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.pink[200],
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.pink[300],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        drawer: Drawer(
            backgroundColor: Colors.pink[100],
            child: ListView(children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'User Details',
                            style: GoogleFonts.abel(
                                textStyle: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w700, color: Colors.blueGrey.shade700)),
                            textAlign: TextAlign.center,
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                child: ClipRect(
                                  child: Image.asset('assets/images/hm.png'),
                                ),
                              ),
                              Text(
                                'Name: Wall-e',
                                style: GoogleFonts.abel(
                                    fontSize: 20, fontWeight: FontWeight.w300, color: Colors.blueGrey.shade700),
                              ),
                              Text(
                                'Mail ID: evewalle@gmail.com',
                                style: GoogleFonts.abel(
                                    fontSize: 20, fontWeight: FontWeight.w300,color: Colors.blueGrey.shade700),
                              ),
                              Text(
                                'Phone: 1234567',
                                style: GoogleFonts.abel(
                                    fontSize: 20, fontWeight: FontWeight.w300,color: Colors.blueGrey.shade700),
                              ),
                              Text(
                                'Address: HomeEarth',
                                style: GoogleFonts.abel(
                                    fontSize: 20, fontWeight: FontWeight.w300,color: Colors.blueGrey.shade700),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: SizedBox(
                    // width: 300,
                    // height: 300,
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/hm.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const Text(
                          "Wall-e",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          "evewalle@gmail.com",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page1()),
                  );
                },
              ),
              ListTile(
                title: const Text('Settings'),
                leading: const Icon(Icons.settings),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page2()),
                  );
                },
              ),
            ])),
        bottomNavigationBar: const MyNav());
  }
}
