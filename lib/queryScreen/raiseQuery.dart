import 'package:flutter/material.dart';
class RaiseQuery extends StatefulWidget {
  const RaiseQuery({Key? key}) : super(key: key);

  @override
  State<RaiseQuery> createState() => _RaiseQueryState();
}

class _RaiseQueryState extends State<RaiseQuery> {
  String _inputText = '';

  void _updateInputText(String newText) {
    setState(() {
      _inputText = newText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Raise Query',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black87,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: TextField(
                onChanged: _updateInputText,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter text',
                  contentPadding: EdgeInsets.all(16.0),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {

                print('Entered text: $_inputText');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
