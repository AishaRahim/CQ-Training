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
        child: SingleChildScrollView(
          child: Column(            
            children: [    
              ClipOval(
                child:Image.asset('assets/image.png',            
                width: 200,            
                height: 150,            
                fit: BoxFit.fill,            
                )
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.purple[50],
                child: const Text('Name: Mahatma Gandhi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.purple[50],
                child: InkWell(
                  onTap: () {
                    print("bapu@yahoo.com");
                  },
                  child: const Text("Mail ID",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20,
                    fontStyle: FontStyle.italic
                    ),),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.pink[100],
                child: const Text("PH: 2553366"),
                ),
              const SizedBox(height: 20),
              
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type Something',
                ),
              ),
              const SizedBox(height: 20),
              
              Container(
                width: 50,
                height: 50,
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
              ),
        
              const SizedBox(height: 20),          
        
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
                height: 50,
                width: 250,
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
        ),
      )
    );
  }
}
