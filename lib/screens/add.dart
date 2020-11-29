import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {

  TextEditingController _titleController = TextEditingController();
  TextEditingController _categoryController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  String title = "";
  String category = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
          width: screenSize.width,
          height: screenSize.height,
          color: Colors.white,
          child: Column(children: [
            Stack(
              children: [
                Material(
                  type: MaterialType.transparency,
                  elevation: 20,
                  child: Container(
                    height: 130,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60))),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          type: MaterialType.transparency,
                          child: Text('MyToDo',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600])),
                        ),
                        Row(children: [
                          Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 30,
                          )
                        ])
                      ]),
                ),
                Positioned(
                    bottom: 20,
                    left: 40,
                    right: 40,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Center(
                        child: Text(
                          'New',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                elevation: 0,
                type: MaterialType.transparency,
                child: TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                    ),
                    hintText: 'Title',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                elevation: 0,
                type: MaterialType.transparency,
                child: TextField(
                  controller: _categoryController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                    hintText: 'Category',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 0,
                type: MaterialType.transparency,
                child: TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                    hintText: 'Description',
                  ),
                  maxLines: 5,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RaisedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.calendar_today),
                    label: Text('Set due date')
                ),
                RaisedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.alarm),
                    label: Text('Remind me'),
                ),
                RaisedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.repeat),
                    label: Text('Repeat')
                ),
              ],
            )
          ])),
    );
  }
}
