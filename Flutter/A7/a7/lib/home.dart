// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                          style: GoogleFonts.oswald(
                              textStyle: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500)),
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              child: ClipRect(
                                child: Image.asset('assets/images/pic.png'),
                              ),
                            ),
                            Text('Name: Mary Joe',style: GoogleFonts.abel(fontSize: 20, fontWeight: FontWeight.w300),),
                            Text('Mail ID: maryjoe@gmail.com',style: GoogleFonts.abel(fontSize: 20, fontWeight: FontWeight.w300),),
                            Text('Phone: 1234567',style: GoogleFonts.abel(fontSize: 20, fontWeight: FontWeight.w300),),
                            Text('Address: Homehome',style: GoogleFonts.abel(fontSize: 20, fontWeight: FontWeight.w300),)


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
                          'assets/images/pic.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      const Text(
                        "Mary Joe",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "maryjoe@gmail.com",
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
          icon: Icon(Icons.star_outlined),
          label: 'Like',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Education'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Account'
          )
        ],
      ),

    );
  }
}
