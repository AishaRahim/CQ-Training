import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'model.dart';
import 'user_detail.dart';

class LoginScreen123 extends StatefulWidget {
  const LoginScreen123({super.key});

  @override
  State<LoginScreen123> createState() => _LoginScreen123State();
}

class _LoginScreen123State extends State<LoginScreen123> {
  @override
  void initState() {
    apiCall();
    super.initState();
  }

  List<SampleData>? jsonResponse;
  void apiCall() async {
    Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      setState(() {
        jsonResponse = sampleDataFromJson(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            child: jsonResponse == null
                ? const CircularProgressIndicator()
                : ListView.builder(
                    itemCount: jsonResponse!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.cyanAccent,
                        child: TextButton(
                          onPressed: () { 
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => UserDetailPage(js: jsonResponse![index])),
                            );
                           },
                          child: ListTile(
                            title: Text(jsonResponse![index].name!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                            subtitle: Text(jsonResponse![index].email!),
                          ),
                        ),
                      );
                    }
               )
        )
    );
  }
}