import 'package:flutter/material.dart';

class Document implements Comparable{

  int chNumber;
  int docDetailID;
  int documentID;
  int matches=0;
  String documentName;
  String chapName;
  String documentText;
  String tags;
  String proofs;

  Document({
  required this.chNumber,required this.docDetailID, required this.documentID,required this.documentName, required this.chapName, required this.documentText, required this.tags, required this.proofs });
Document.fromMap(Map<String, dynamic> document):
      chNumber = document['chNumber'],
docDetailID = document['docDetailID'],
chapName = document['chapName'],
documentID = document['documentID'],
documentName = document['documentName'],
documentText = document["documentText"],
  tags = document['tags'],
  proofs = document['proofs'];
@override
  String toString(){
  return "$documentName\r\n Chapter $chNumber : $chapName \r\n$documentText \r\n Proofs: \r\n$proofs";
}
Map<String,Object> toMapforDB(){
  return{
    'chNumber' : chNumber,
    'docDetailID' : docDetailID,
    'documentID' : documentID,
    'chapName' : chapName,
    'documentName' : documentName,
    'documentText' : documentText,
    "tags" : tags,
    'proofs': proofs
  };
}

  @override
  int compareTo(other) {
  Document document = other as Document;
   return chNumber.compareTo(document.chNumber);
     }
}