import 'package:flutter/material.dart';
import 'package:studcoloco/demandes/ajouter_demande.dart';
import 'package:studcoloco/demandes/list_demande.dart';
import 'package:studcoloco/offres/ajouter_offre.dart';
import 'package:studcoloco/offres/list_offres.dart';
import 'package:studcoloco/screens/home/home.dart';

class MainDrawer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(6),
              color: Colors.green[700],

              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: 25,
                          bottom: 10),
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                      ),
                    ),
                    Container(
                      child: Text("Student-ColoCo",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                        ),
                      ),
                      margin: EdgeInsets.only(
                       //   top: 25,
                          bottom: 50),
                    )

                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Ajouter Offre'),
              dense:true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                     builder: (context) => AjouterOffre(),
                    ));
              },
            ),
            ListTile(
                leading: Icon(Icons.assignment),
              title: Text('Liste Offres'),
              dense:true,
              onTap: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Ajouter une demande'),
              dense:true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AjouterDemande(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Liste demandes'),
              dense:true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                     builder: (context) => ListDemande(),
                    ));
              },
            ),
          ],
        )
    );
  }
}