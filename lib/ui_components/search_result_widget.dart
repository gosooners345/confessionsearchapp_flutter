import 'package:flutter/material.dart';


class SearchResultCardWidget extends StatefulWidget{
  SearchResultCardWidget({Key? key}): super(key:key);
  @override
  State<SearchResultCardWidget> createState() {
    return _SearchResultCardWidget();
  }
}
class _SearchResultCardWidget extends State<SearchResultCardWidget>{
  Widget build(BuildContext context){
    return Column(
      children: [
        Text("Document Title"),
        SizedBox(height: 8,),
        Text("Chapter Title and Number"),
        SizedBox(height: 8,),
        Text("Document Data"),
        SizedBox(height: 8,),
        Text("Proofs"),
        SizedBox(height: 8,),
        Text("Tags"),
        SizedBox(height: 8.0,),
        Text("Matches"),
        SizedBox(height: 8.0,),
        Row(children: [ElevatedButton(onPressed: (){}, child: Text("Save note"))],)



      ],
    );
  }
}