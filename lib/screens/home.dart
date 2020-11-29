import 'package:Todo/model/todos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
        Container(
          width: screenSize.width,
          height: screenSize.height,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 130,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)
                      )
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
                          child: Text(
                            'MyToDo',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]
                            )
                          ),
                        ),
                        Row(
                         children: [
                           Icon(
                           Icons.account_circle,
                           color: Colors.white,
                           size: 30.0,
                           ),
                           SizedBox(width: 1,),
                           Icon(
                             Icons.more_vert,
                             color: Colors.white,
                             size: 30,
                           )
                         ]
                        )
                      ]
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 40,
                    right: 40,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Center(
                        child: Text(
                        'Today',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]

                        ),
                    ),
                      ),
                  )
                  )
                ],
              ),
              SizedBox(height:2),
              Container(
                  height: screenSize.height - 157,
                  width: screenSize.width,
                child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey[500],
                  endIndent: 20,
                  thickness: 1,
                  indent: 30,
                ),
                itemCount: todos.length,
                itemBuilder: (context, index){
                  Todo todo = todos[index];
                  return Material(
                    type: MaterialType.transparency,
                    child: ListTile(
                      leading: Icon(Icons.pause_circle_filled, color: Colors.grey[300], size: 30,),
                      title: Text(
                        todo.title,
                      ),
                      subtitle: Text(
                        todo.category
                      ),
                    ),
                  );
                },
              )
              ),

            ],
    )
    ),
          Positioned(
              top: screenSize.height - 90,
              left: screenSize.width - 90,
              child: FloatingActionButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/add');
                  },
                  child: Icon(Icons.add),
                backgroundColor: Colors.grey[600],
              )
          )
      ])
    );
  }
}
