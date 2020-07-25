import 'package:flutter/material.dart';



class ListOffres extends StatefulWidget {
  @override
  _ListOffresState createState() => _ListOffresState();
}

class _ListOffresState extends State<ListOffres> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: const <Widget>[
          SizedBox(height: 10,),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.blue,
              ),
              title: Text('ROOM DU LUX'),
              subtitle: Text(
                  '2 votageur , ...'
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
              title: Text('ROOM LUX'),
              subtitle: Text(
                  'Voyageur, 3 bed, ... Pour 3 etudianr'
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
              title: Text('Etudiant Apartement'),
              subtitle: Text(
                  '3 bed , Pour 3 etudiant , Wifi...'
              ),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}
