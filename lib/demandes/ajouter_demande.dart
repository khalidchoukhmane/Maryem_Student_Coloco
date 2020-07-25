import 'package:flutter/material.dart';
import 'package:studcoloco/screens/menu/menu.dart';
import 'package:studcoloco/services/auth.dart';

class AjouterDemande extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AjouterDemandeState();
  }
}

class AjouterDemandeState extends State<AjouterDemande> {
  String _coor;
  String _budget;
  String _comm;

  final AuthService _auth = AuthService();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildPrenom() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Tapez votre Prenom'),
      // maxLines: 3,
      validator: (String value) {
        if (value.isEmpty) {
          return 'le prenom obligatoire';
        }

        return null;
      },
      onSaved: (String value) {
        _coor = value;
      },
    );
  }

  Widget _buildNom() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Tapez votre Nom'),
      // maxLines: 3,
      validator: (String value) {
        if (value.isEmpty) {
          return 'le nom obligatoire';
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


  Widget _buildComm() {
    return TextFormField(
      maxLines: 3,
      decoration: InputDecoration(labelText: 'Commentaire'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Commentaire est obligatoire';
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
        title: Text('Ajouter demande'),
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
                _buildNom(),
                SizedBox(height: 15),
                _buildPrenom(),
                SizedBox(height: 15),
                _buildBudget(),
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