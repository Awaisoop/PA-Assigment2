import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pa_assigment/list/inputpage.dart';
import 'package:pa_assigment/list/list.dart';
import 'package:pa_assigment/list/note.dart';


/** Home Class Work There  **/

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Note> allNotes = [];

  void getNote(String note) {
    setState(() {
      allNotes.add(new Note(userName: 'Awais Ur Rehman', noteDesc: note));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            list(),
            Container(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                children: allNotes.map((note) {
                  return allNotes.isEmpty
                      ? Center(
                          child: Text('Empty List ...'),
                        )
                      : Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(note.userName),
                                    Text("27 De 2019"),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[Text(note.noteDesc)],
                                )
                              ],
                            ),
                          ),
                        );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_HomeState) {
              return Inputpage(
                userName: 'Awais Ur Rehman',
                note: getNote,
              );
            }));
          }),
    );
  }
}
