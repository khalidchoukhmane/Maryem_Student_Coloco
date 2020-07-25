
import 'package:flutter/material.dart';
import 'package:studcoloco/screens/menu/menu.dart';
import 'package:studcoloco/services/auth.dart';

class ListDemande extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text('List des demandes'),
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
        body: Container(
          child: ListView(
            children: const <Widget>[
              SizedBox(height: 10,),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.blue,
                  ),
                  title: Text('Meryem ouch'),
                  subtitle: Text(
                      'Besoin d\'une apartement pour 2 etudient'
                  ),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.grey,
                  ),
                  title: Text('Fatima Ezahra'),
                  subtitle: Text(
                      'Besoin d\'une apartement pour 3 etudient'
                  ),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.green,
                  ),
                  title: Text('Maryem'),
                  subtitle: Text(
                      'Besoin d\'une apartement pour 4 etudient'
                  ),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}