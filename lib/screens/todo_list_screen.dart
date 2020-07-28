import 'package:flutter/material.dart';
import 'package:sqflite_crud/screens/add_to_task.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  Widget buildTile(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "Title",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            subtitle: Text("Date:21 march .Medium"),
            trailing: Checkbox(
              onChanged: (val) {
                print("tapped");
              },
              activeColor: Colors.blue,
              value: true,
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 2,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "My Task",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "2 of 5",
                        style: TextStyle(fontSize: 30.0, color: Colors.grey),
                      )
                    ],
                  ),
                );
              }
              return buildTile(index);
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context){
              return AddTaskScreen();
            }
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
