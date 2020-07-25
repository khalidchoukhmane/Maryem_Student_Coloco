import 'package:flutter/material.dart';
import 'package:studcoloco/models/user.dart';
import 'package:studcoloco/screens/authenticate/authenticate.dart';
import 'package:studcoloco/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:studcoloco/screens/map/map.dart';



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget

      return Home();


  }
}