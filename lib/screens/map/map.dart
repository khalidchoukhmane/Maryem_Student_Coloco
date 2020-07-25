import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:studcoloco/services/auth.dart';


class MapClass extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Map'),
        backgroundColor: Colors.green[700],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Connexion'),
            onPressed: () async {
              Navigator.pushReplacementNamed(context, "/home");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(target: LatLng(32.3424, -6.3758), zoom: 15.0),
              zoomGesturesEnabled: true,
          ),
        ),
        ],
        ),
      ),
    );
  }
}