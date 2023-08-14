import 'package:flutter/material.dart';
import 'package:phonebook/screens/contact.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      title: "Phone Book",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> contlist = [
  "Prazwa",
  "Pooja",
  "Ram",
  "sita",
  "Prazwa",
  "Pooja",
  "Ram",
  "sita",
  "Prazwa",
  "Pooja",
  "Ram",
  "sita"
];

List<String> phonenum = [
  "9817007342",
  "9812345657",
  "9842747572",
  "98910127871",
  "9817007342",
  "9812345657",
  "9842747572",
  "98910127871",
  "9817007342",
  "9812345657",
  "9842747572",
  "98910127871"
];

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    DialerPage(),
    LogsPage(),
    ContactPage(),
    AddContactsPage(),
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Book"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.dialpad), label: "Dialer"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call Logs"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add Contacts")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.deepPurpleAccent,
      ),
    );
  }
}

class MyWidget1 extends StatefulWidget {
  const MyWidget1({super.key});

  @override
  State<MyWidget1> createState() => _MyWidget1State();
}

ListView listmeth() {
  return ListView.builder(
      itemCount: contlist.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.supervised_user_circle),
          title: Text(contlist[index]),
          subtitle: Text(phonenum[index]),
          trailing: IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              launch("tel://:${phonenum[index]}");
            },
          ),
        );
      });
}

class _MyWidget1State extends State<MyWidget1> {
  @override
  Widget build(BuildContext context) {
    return listmeth();
  }
}
