import 'package:flutter/material.dart';

class AddingHomeDetails extends StatefulWidget {
  @override
  _AddingHomeDetailsState createState() => _AddingHomeDetailsState();
}

class _AddingHomeDetailsState extends State<AddingHomeDetails> {
  String? _dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Your TextFormFields and DropdownButtonFormField here
            const SizedBox(
              height: 50,
            ),
            DropdownButtonFormField<String>(
              value: _dropdownValue,
              decoration: InputDecoration(
                labelText: 'City',
                hintText: 'Select Your City',
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
                'Ahmedabad',
                'Pune',
                'Surat',
                'Vadodara',
                'Mumbai',
                'Nagpur'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              value: _dropdownValue,
              decoration: InputDecoration(
                labelText: 'Society',
                hintText: 'Select Your Society',
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
                'Ariana Lakeview society',
                'GreenPalace society',
                'Paradise society',
                'Sunflower Society',
                'GrandStar Society',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              value: _dropdownValue,
              decoration: InputDecoration(
                labelText: 'Tower/Bunglow',
                hintText: 'Select Your Tower/Bunglow',
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
              items: <String>['Wing A', 'Wing B', 'Wing C', 'Wing D', 'Wing E']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              value: _dropdownValue,
              decoration: InputDecoration(
                labelText: 'Flat Number',
                hintText: 'Select Your Flat Number',
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
              items: <String>['101', '102', '103', '104', '105']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              value: _dropdownValue,
              decoration: InputDecoration(
                labelText: 'Occupency Status',
                hintText: 'Select Your Status',
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
              items: <String>['Currently Residing', 'Moving In']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
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
              onPressed: () {
                Navigator.pop(context, {
                  'City': _dropdownValue,
                  'Society': _dropdownValue,
                  'Tower/bunglow': _dropdownValue,
                  'Flat Number': _dropdownValue,
                  'Occupency Status': _dropdownValue,
                });
              },
              child: const Text(
                'Add Homes',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
