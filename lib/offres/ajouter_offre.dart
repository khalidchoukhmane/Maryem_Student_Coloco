import 'package:flutter/material.dart';
import 'package:studcoloco/screens/menu/menu.dart';
import 'package:studcoloco/services/auth.dart';

class AjouterOffre extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AjouterOffreState();
  }
}

class AjouterOffreState extends State<AjouterOffre> {
  String _coor;
  String _budget;
  String _comm;

  final AuthService _auth = AuthService();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildtitre() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Tapez le titre'),
     // maxLines: 3,
      validator: (String value) {
        if (value.isEmpty) {
          return 'le titre obligatoire';
        }

        return null;
      },
      onSaved: (String value) {
        _coor = value;
      },
    );
  }

  Widget _buildBudget() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Budget'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Budget is obligatoire';
        }

        return null;
      },
      onSaved: (String value) {
        _budget = value;
      },
    );
  }

  Widget _buildLatitude() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Tapez latitude'),
      // maxLines: 3,
      validator: (String value) {
        if (value.isEmpty) {
          return 'latitude obligatoire';
        }

        return null;
      },
      onSaved: (String value) {
        _coor = value;
      },
    );
  }

  Widget _buildLangitude() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Tapez langitude'),
      // maxLines: 3,
      validator: (String value) {
        if (value.isEmpty) {
          return 'langitude est obligatoire';
        }

        return null;
      },
      onSaved: (String value) {
        _coor = value;
      },
    );
  }


  Widget _buildComm() {
    return TextFormField(
      maxLines: 3,
      decoration: InputDecoration(labelText: 'Description'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Description est obligatoire';
        }
        return null;
      },
      onSaved: (String value) {
        _comm = value;
      },
    );
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Ajouter offre'),
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
      resizeToAvoidBottomPadding: false,
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildtitre(),
                SizedBox(height: 15),
                _buildBudget(),
                SizedBox(height: 15),
                _buildLatitude(),
                SizedBox(height: 15),
                _buildLangitude(),
                SizedBox(height: 15),
                _buildComm(),
                SizedBox(height: 50),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_coor);
                    print(_budget);
                    print(_comm);


                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}