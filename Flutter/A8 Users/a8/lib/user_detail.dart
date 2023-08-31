import 'package:a8/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';


class UserDetailPage extends StatefulWidget {
  final SampleData js;

  const UserDetailPage({super.key, required this.js});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.tealAccent ,
            width: 500,
            height: 400,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: ClipOval(
                    child: Image.asset('assets/images/userr.jpg',
                    width: 100,
                    height: 100,
                    
                    
                    ),
                  ),
                ),
                Text(widget.js.name!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
                const SizedBox(height: 10,),
                Text(widget.js.email!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
                const SizedBox(height: 10,),
                Text(widget.js.phone!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const SizedBox(width: 170,),
                    IconButton(onPressed:() {
                      callNumber(widget.js.phone!);
                    }, icon: const Icon(Icons.call),
                    iconSize: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 80,),
          Row(
            children: [
              const SizedBox(width: 70,),
              const Icon(Icons.home,color: Colors.cyan,size: 30,),
              const SizedBox(width: 25,),
              Text('Address:',style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
              const SizedBox(width: 20,),
              Text(widget.js.address!.street!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 70,),
              const Icon(Icons.work,color: Colors.cyan,size: 30,),
              const SizedBox(width: 25,),
              Text('Company:',style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
              const SizedBox(width: 20,),
              Text(widget.js.company!.name!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 70,),
              ClipOval(
                child: Image.asset('assets/images/website.png',width: 30,height: 30,),
              ),
              const SizedBox(width: 30,),
              Text('Website:',style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
              const SizedBox(width: 20,),
              Text(widget.js.website!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),),
            ],
          )
        ],
      ),
    );
  }
  callNumber(String phoneNumber) async {
  String number = phoneNumber;
  await FlutterPhoneDirectCaller.callNumber(number);
}

}