import 'package:flutter/material.dart';
class NoteViewModel extends ChangeNotifier{

  final List<String> _notes = [];

  List<String> get notes => List.unmodifiable(_notes);

  void addNote(String text){
    if(text.trim().isNotEmpty){
      _notes.add(text);
      notifyListeners();
    }
  }
  void deleteNoteAt(int index){
    _notes.removeAt(index);
    notifyListeners();
  }
  void updateNoteAt(int index,String newText){
    if(newText.trim().isNotEmpty){
      _notes[index] = newText;
      notifyListeners();
    }
  }
}