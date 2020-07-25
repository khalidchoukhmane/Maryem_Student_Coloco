import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studcoloco/models/user.dart';
import 'package:studcoloco/screens/authenticate/register.dart';
import 'package:studcoloco/screens/authenticate/sign_in.dart';
import 'package:studcoloco/screens/home/home.dart';
import 'package:studcoloco/screens/map/map.dart';
import 'package:studcoloco/screens/wrapper.dart';
import 'package:studcoloco/services/auth.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        routes: {
          "/logout": (_) => new MapClass(),
          "/home": (_) => new Home(),
        },
      ),
    );
  }
}