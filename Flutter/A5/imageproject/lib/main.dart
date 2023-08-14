// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        
        title: const Text('DETAILS')
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(15),            
        child: Column(            
          children: [    
            ClipOval(
              child:Image.asset('assets/image.png',            
              width: 100,            
              height: 100,            
              fit: BoxFit.cover,            
              )
            ),
            const Text('Name: Mahatma Gandhi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            InkWell(
              onTap: () {
                print("bapu@yahoo.com");
              },
              child: const Text("Mail ID",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            const Text("PH: 2553366"),
            const SizedBox(height: 15,),
      
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type Something',
              ),
            ),
            const SizedBox(height: 15),
      
            SizedBox(
              width: 100,
              height: 100, 
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.blue,
                      offset: Offset.zero
                    )
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      Colors.purple,
                    ],
                  ),
                ),
              )
            ),

            const SizedBox(height: 15),          

            // ElevatedButton(
            // child: const Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(Icons.download,size: 30,color: Colors.black,),
            //     SizedBox(width: 15,),
            //     Text('DOWNLOAD')
            //   ],
            // ),  
            // onPressed: () {
            //   print('button pressed');
            // },
            SizedBox(
              height: 30,
              width: 400,
              child: ElevatedButton.icon(
                onPressed: (){
                  print('button pressed');
                },
                icon: const Icon(Icons.download,size: 30,color: Colors.black,),
                label: const Text("DOWNLOAD"),
              ),
            )
          ],
        ),
      )
    );
  }
}
