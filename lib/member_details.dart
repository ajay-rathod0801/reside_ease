import 'package:flutter/material.dart';

class MemberDetails extends StatefulWidget {
  const MemberDetails({super.key});

  @override
  State<MemberDetails> createState() => _MemberDetailsState();
}

class _MemberDetailsState extends State<MemberDetails> {
  String? _dropdownValue = 'Mother';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Member Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    hintText: 'Enter First Name',
                    filled: true,
                    fillColor: Colors.blue.shade50,
                    focusColor: Colors.black,
                    labelStyle: const TextStyle(color: Colors.black87),
                  ),
                  cursorColor: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Middle Name',
                    hintText: 'Enter Middle Name',
                    filled: true,
                    fillColor: Colors.blue.shade50,
                    focusColor: Colors.black,
                    labelStyle: const TextStyle(color: Colors.black87),
                  ),
                  cursorColor: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    hintText: 'Enter Last Name',
                    filled: true,
                    fillColor: Colors.blue.shade50,
                    focusColor: Colors.black,
                    labelStyle: const TextStyle(color: Colors.black87),
                  ),
                  cursorColor: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField<String>(
                  value: _dropdownValue,
                  decoration: InputDecoration(
                    labelText: 'Relation',
                    hintText: 'Select Relationship with Person',
                    filled: true,
                    fillColor: Colors.blue.shade50,
                    focusColor: Colors.black,
                    labelStyle: const TextStyle(color: Colors.black87),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'Mother',
                    'Father',
                    'Sibling',
                    'Wife',
                    'Husband',
                    'Tenant'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 30,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
