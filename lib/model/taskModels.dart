class TaskModel {
  int? _id;
  String? _title;
  String? _created_date;
  bool? _completed;

  TaskModel(dynamic object) {
    _id = object["id"];
    _title = object["_title"];
    _created_date = object["created_date"];
    _completed = false;
  }

  TaskModel.fromMap(Map<String, dynamic> data) {
    _id = data["id"];
    _title = data["_title"];
    _created_date = data["created_date"];
    _completed = false;
  }

  Map<String, dynamic> toMap() {
    return {
      "id": _id,
      "title": _title,
      "created_date": _created_date,
      "completed": _completed,
    };
  }

  // getter

  int? get id => _id;

  // get title

  String? get title => _title;
}
