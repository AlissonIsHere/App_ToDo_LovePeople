class Todo {
  int? id;
  String? title;
  String? description;
  bool? completed;
  String? color;
  String? createdAt;
  String? updatedAt;

  Todo(
      {this.id,
      this.title,
      this.description,
      this.completed,
      this.color,
      this.createdAt,
      this.updatedAt});

  Todo.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.title = json["title"];
    this.description = json["description"];
    this.completed = json["completed"];
    this.color = json["color"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.id != null) {
      data["id"] = this.id;
    }
    data["title"] = this.title;
    data["description"] = this.description;
    data["color"] = this.color;
    return data;
  }
}
