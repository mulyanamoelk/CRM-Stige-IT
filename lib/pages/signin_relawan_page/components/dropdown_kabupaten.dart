import 'dart:convert';

import 'package:crm_stigeit/models/userProvinsi.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DropdownKabs extends StatefulWidget {
  const DropdownKabs({Key? key}) : super(key: key);

  @override
  State<DropdownKabs> createState() => _DropdownKabsState();
}

class _DropdownKabsState extends State<DropdownKabs> {
  List<Welcome> getapi = [];
  Future<List<Welcome>> getPostKab() async {
    final response = await http.get(Uri.parse(
        "https://api.binderbyte.com/wilayah/provinsi?api_key=9fd107f27dfffd6e9452ed8b1deedb27100ad3239b33f2bda58f36726a230684"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        getapi.add(Welcome.fromJson(i));
      }
      return getapi;
    } else {
      return getapi;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: FutureBuilder(builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text('Proses');
          } else {
            return ListView.builder(
                itemCount: getapi.length,
                itemBuilder: (context, index) {
                  return Text(getapi[index].name.toString());
                });
          }
        }),
      ),
    );
  }
}
