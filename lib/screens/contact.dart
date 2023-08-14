import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

List<String> contlist = [];

List<String> phonenum = [];

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
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
}

class DialerPage extends StatefulWidget {
  const DialerPage({super.key});

  @override
  State<DialerPage> createState() => _DialerPageState();
}

class _DialerPageState extends State<DialerPage> {
  @override
  Widget build(BuildContext context) {
    return DialerPage();
  }
}

class LogsPage extends StatefulWidget {
  const LogsPage({super.key});

  @override
  State<LogsPage> createState() => _LogsPageState();
}

class _LogsPageState extends State<LogsPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class AddContactsPage extends StatefulWidget {
  const AddContactsPage({super.key});

  @override
  State<AddContactsPage> createState() => _AddContactsPageState();
}

class _AddContactsPageState extends State<AddContactsPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
