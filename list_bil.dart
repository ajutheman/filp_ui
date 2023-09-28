import 'package:flutter/material.dart';

void main() {
  runApp(ListApp());
}

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: List_bil(),
    );
  }
}

class List_bil extends StatefulWidget {
  @override
  _List_bilState createState() => _List_bilState();
}

class _List_bilState extends State<List_bil> {
  List<String> itemList = [];
  List<Color> boxColors = [

    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.black

  ];
  int colorIndex = 0;

  void addItem(String item) {
    setState(() {
      itemList.add(item);
      colorIndex = (colorIndex + 1) % boxColors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView.builder(
        itemCount: itemList.length + 1,
        itemBuilder: (context, index) {
          if (index == itemList.length) {
            // Display the button tile at the end of the list
            return ElevatedButton(
              onPressed: () {
                _showAddItemDialog(context);
              },
              child: Text('Add Item'),
            );
          } else {
            // Display the regular item tile with different color
            return Card(
              color: boxColors[index % boxColors.length],
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text(
                      itemList[index],
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle button press
                          print('Button Pressed for ${itemList[index]}');
                        },
                        child: Text(
                          'Button',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Future<void> _showAddItemDialog(BuildContext context) async {
    String newItem = '';
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add name'),
          content: TextField(
            onChanged: (value) {
              newItem = value;
            },
            decoration: InputDecoration(hintText: 'Enter name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (newItem.isNotEmpty) {
                  addItem(newItem);
                }
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
