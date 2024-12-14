// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(openaiproject());
}

class openaiproject extends StatefulWidget {
  const openaiproject({super.key});

  @override
  State<openaiproject> createState() => _openaiprojectState();
}

class _openaiprojectState extends State<openaiproject> {
  var image_url = "";
  var user_input = "";
  var showloading = false;
  final GlobalKey<ScaffoldMessengerState> scaffold_key=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      scaffoldMessengerKey: scaffold_key,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Image Generator"),
          ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(labelText: "Enter the Text to create an image from AI"),
                onSubmitted: (value) {
                  setState(() {
                    user_input = value;
                  });
                },
              ),
            ),
            UnconstrainedBox(
              child: ElevatedButton(
                onPressed: () async {
                  var url = Uri.http('13.234.29.56', '/cgi-bin/app.py/', {'user_input': '$user_input'});
                  setState(() {
                    showloading = true;
                  });
                  try{
                    var response = await http.get(url);
                    if (response.statusCode == 200) {
                      print('Success');
                      setState(() {
                        image_url = response.body;
                      });
                    } else {
                      print('Failure');
                    }
                  }
                  on SocketException catch(err){
                    final ScaffoldMessengerState? scaffold=scaffold_key.currentState;
                    scaffold?.showSnackBar(SnackBar(content: Text('$err' + "Try Again")));
                    print(err);
                    setState(() {
                      showloading = false;
                    });
                  }
                },
                child: const Text("Create Image"),
              ),
            ),
            if(image_url!="")
            Image.network(
              image_url.trimRight(),
              loadingBuilder: ((context, child, loadingProgress){
                if(loadingProgress==null) {
                  return child;
                }
                else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
            ),
            if(image_url=="" && showloading)
            Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
