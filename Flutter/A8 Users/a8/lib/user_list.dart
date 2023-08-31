import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import 'model.dart';
import 'user_detail.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  int? index;
  static Box<String> flutter = Hive.box<String>("demo");
  @override
  void initState() {
    index = 0;
    apiCall();
    super.initState();
  }

  List<SampleData>? jsonResponse;
  void apiCall() async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      setState(() {
        jsonResponse = sampleDataFromJson(response.body);
        String name=jsonResponse![index!].name!;
        flutter.put("name",name);
      });
    }
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List',style: TextStyle(fontSize: 30,color: Colors.blue[900]),),
        backgroundColor: Colors.blue[100],
      ),
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
                            print(flutter.get('name'));
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