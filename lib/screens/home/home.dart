import 'package:flutter/material.dart';
import 'package:studcoloco/offres/list_offres.dart';
import 'package:studcoloco/screens/map/map.dart';
import 'package:studcoloco/screens/menu/menu.dart';
import 'package:studcoloco/services/auth.dart';


class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text('List des offres'),
          backgroundColor: Colors.green[700],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                Navigator.pushReplacementNamed(context, "/logout");
              },
            ),
          ],
        ),
        body: ListOffres(),
      ),
    );
  }
}