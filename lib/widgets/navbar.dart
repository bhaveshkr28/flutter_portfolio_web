// NavBar widget implementation
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('My Portfolio'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // navigate to home
          },
        ),
        IconButton(
          icon: Icon(Icons.contact_mail),
          onPressed: () {
            // navigate to contact
          },
        ),
      ],
    );
  }
}