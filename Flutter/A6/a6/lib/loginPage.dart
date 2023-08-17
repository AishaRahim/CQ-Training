// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final String userName;
  final String password;
  const LoginPage({Key? key, required this.userName, required this.password}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    // void select() {
    //   passwordVisible = !passwordVisible;
    // }

    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          'assets/image/Group15.svg',
          width: 60,
          height: 60,
        ),
        actions: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Image.asset(
              'assets/image/act.png',
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(33, 0, 33, 0),
              child: Image.asset(
                'assets/image/girl.png',
                width: 362,
                height: 263.273,
              ),
            ),
            Container(
              width: 428,
              height: 500,
              padding: const EdgeInsets.fromLTRB(14, 25, 14, 0),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff4063D7), Color(0xff204EFA)],
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  Text(
                    'LOGIN',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      letterSpacing: .75,
                      fontWeight: FontWeight.w700,
                    )),
                    textAlign: TextAlign.center,
                  ),

                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: usernameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.fromLTRB(32, 0, 24, 0),
                            child: SvgPicture.asset(
                              'assets/image/profile.svg',
                              width: 16.2,
                              height: 18,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Color(0xff97BDFF))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Color(0xff97BDFF))),
                          hintText: 'Username',
                          hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff97BDFF),
                                  fontStyle: FontStyle.normal))),
                    ),
                  ),
                  // Container(
                  //   padding: const EdgeInsets.all(10),
                  //   child: TextField(
                  //     controller: emailController,
                  //     keyboardType: TextInputType.name,
                  //     decoration: InputDecoration(
                  //         prefixIcon: Padding(
                  //           padding: const EdgeInsets.fromLTRB(32, 0, 24, 0),
                  //           child: SvgPicture.asset(
                  //             'assets/image/letter.svg',
                  //             width: 16.2,
                  //             height: 18,
                  //           ),
                  //         ),
                  //         enabledBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(30),
                  //             borderSide:
                  //                 const BorderSide(color: Color(0xff97BDFF))),
                  //         focusedBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(30),
                  //             borderSide:
                  //                 const BorderSide(color: Color(0xff97BDFF))),
                  //         hintText: 'Email',
                  //         hintStyle: GoogleFonts.poppins(
                  //             textStyle: const TextStyle(
                  //                 fontSize: 12,
                  //                 color: Color(0xff97BDFF),
                  //                 fontStyle: FontStyle.normal))),
                  //   ),
                  // ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.fromLTRB(32, 0, 24, 0),
                            child: SvgPicture.asset(
                              'assets/image/lock.svg',
                              width: 16.2,
                              height: 18,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Color(0xff97BDFF))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Color(0xff97BDFF))),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff97BDFF),
                                  fontStyle: FontStyle.normal))),
                    ),
                  ),
                  // Container(
                  //   padding: const EdgeInsets.all(10),
                  //   child: TextField(
                  //     obscureText: passwordVisible,
                  //     controller: confirmController,
                  //     keyboardType: TextInputType.name,
                  //     decoration: InputDecoration(
                  //         prefixIcon: Padding(
                  //           padding: const EdgeInsets.fromLTRB(32, 0, 24, 0),
                  //           child: SvgPicture.asset(
                  //             'assets/image/lock.svg',
                  //             width: 16.2,
                  //             height: 18,
                  //           ),
                  //         ),
                  //         suffixIcon: IconButton(
                  //             onPressed: () {
                  //               setState(() {
                  //                 select();
                  //               });
                  //             },
                  //             icon: Icon(passwordVisible
                  //                 ? Icons.remove_red_eye
                  //                 : Icons.password)),
                  //         enabledBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(30),
                  //             borderSide:
                  //                 const BorderSide(color: Color(0xff97BDFF))),
                  //         focusedBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(30),
                  //             borderSide:
                  //                 const BorderSide(color: Color(0xff97BDFF))),
                  //         hintText: 'Confirm Password',
                  //         hintStyle: GoogleFonts.poppins(
                  //             textStyle: const TextStyle(
                  //                 fontSize: 12,
                  //                 color: Color(0xff97BDFF),
                  //                 fontStyle: FontStyle.normal))),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 182,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    width: 400,
                    height: 60,
                    child: TextButton(
                        onPressed: () {
                          if(passwordController.text==widget.password && usernameController.text==widget.userName){
                          print("SUCCESS");
                          } else {
                            print('ERROR');
                          }

                        },
                        child: Text(
                          'LOGIN',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff2954F1),
                                  fontSize: 22,
                                  letterSpacing: 0.66,
                                  fontWeight: FontWeight.w600)),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

