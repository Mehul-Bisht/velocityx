import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
    padding: const EdgeInsets.all(0),
    children: [
    UserAccountsDrawerHeader(
    accountName: Text("Mehul Bisht"),
    accountEmail: Text("mehulbishtanna@gmail.com"),
    currentAccountPicture: CircleAvatar(
    backgroundImage: NetworkImage(
    "https://images.unsplash.com/photo-1585737655161-76ddbd569e5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
    )),
    ListTile(
    leading: Icon(Icons.person),
    title: Text("Mehul Bisht"),
    subtitle: Text("Developer"),
    trailing: Icon(Icons.edit),
    onTap: () {},
    ),
    ListTile(
    leading: Icon(Icons.email),
    title: Text("Email"),
    subtitle: Text("mehulbishtanna@gmail.com"),
    trailing: Icon(Icons.edit),
    ),
    ],
    ),
    );
  }
}
