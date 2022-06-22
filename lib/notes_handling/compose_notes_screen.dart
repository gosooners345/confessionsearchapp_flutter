


import 'dart:async';

import 'package:flutter/material.dart';

import '../data_classes/notes_data_class.dart';

class ComposeNotesWidget extends StatefulWidget {
  const ComposeNotesWidget({
    Key? key, required this.note, required this.title, required this.id
  }) :super(key: key);

  final String title;
  final int id;
  final Notes note;

  @override
  State<ComposeNotesWidget> createState() => _ComposeNotesState();
}

class _ComposeNotesState extends State<ComposeNotesWidget>{
  final _formKey = GlobalKey<_ComposeNotesState>();

  late TextEditingController titleController;
  late TextEditingController contentController;
  late TextEditingController tagsController;

  @override
  void initState(){
    super.initState();

    titleController = TextEditingController();
    contentController = TextEditingController();
    tagsController = TextEditingController();

  }


  void updateNote() async{}

  void addNote() async{}

  updateTimer() async{
    return Timer(const Duration(milliseconds: 2),updateNote);
  }

  addTimer() async{
    return Timer(Duration(milliseconds: 2),addNote);
  }

  void saveNote(Notes note) async{

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(super.widget.title),),

    );
  }
}