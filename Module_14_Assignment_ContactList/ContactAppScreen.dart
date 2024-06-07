import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Value_Entity.dart';

class ContactApp extends StatefulWidget {
  const ContactApp({super.key});

  @override
  State<ContactApp> createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  final TextEditingController _nameTEcontroller = TextEditingController();
  final TextEditingController _numberTEcontroller = TextEditingController();

  final List<value> valueList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Contact List',
          style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _nameTEcontroller,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _numberTEcontroller,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  labelText: 'Number',
                  hintText: 'Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  value v = value(_nameTEcontroller.text.trim(),
                      _numberTEcontroller.text.trim());
                  valueList.add(v);
                  _nameTEcontroller.clear();
                  _numberTEcontroller.clear();
                  setState(() {});
                },
                child: Text('ADD',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue.shade200,
                ),
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              primary: true,
              itemCount: valueList.length,
              itemBuilder: (context, index) {
                value listValue = valueList[index];
                return GestureDetector(
                  onLongPress: () {
                    ShowAlertDialogBox(context);
                  },
                  child: buildContactItem(listValue),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void ShowAlertDialogBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Confirmation"),
        content: const Text("Are You Want To Delete This Contact"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(14),
              child: const Text("okay"),
            ),
          ),
        ],
      ),
    );
  }

  buildContactItem(value listValue) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Card(
            color: Colors.lightBlue.shade100,
            child: ListTile(
              leading: Image.asset(
                'images/ContactIcon.png',
                height: 42,
                width: 42,
              ),
              title: Text(listValue.name,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(listValue.number,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameTEcontroller.dispose();
    _numberTEcontroller.dispose();
    super.dispose();
  }
}
