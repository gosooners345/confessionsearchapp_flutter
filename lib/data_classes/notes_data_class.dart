
class Notes {
  int id;
  String title;
  String content;
  String tags;
  DateTime timeCreated;
  DateTime timeUpdated;

  Notes({
    required this.id,
    required this.title,
    required this.content,
    required this.tags,
    required this.timeCreated,
    required this.timeUpdated
});
  Notes.fromMap(Map<String, dynamic> note):
      id = note['id'],
  title = note['title'],
  content = note['content'],
  tags = note['tags'],
  timeCreated = note['time_created'],
  timeUpdated = note['time_updated'];

  @override
  String toString(){
    return 'Title: $title'
        'Content: $content'
        'Tags: $tags'
        'Time Created: $timeCreated'
        'Time Updated: $timeUpdated';
  }

  Map<String, Object> toMapforDB(){
    return{
      'id': id,
      'title': title,
      'content': content,
      'tags': tags,
      'time_created': timeCreated.millisecondsSinceEpoch,
      'time_updated' : timeUpdated.millisecondsSinceEpoch
    };
  }


}