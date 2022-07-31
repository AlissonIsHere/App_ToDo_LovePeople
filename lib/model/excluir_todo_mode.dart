class ExcluirToDo {
  int? id;
  String? title;
  String? description;
  bool? completed;
  String? color;
  User? user;
  String? publishedAt;
  String? createdAt;
  String? updatedAt;

  ExcluirToDo(
      {this.id,
      this.title,
      this.description,
      this.completed,
      this.color,
      this.user,
      this.publishedAt,
      this.createdAt,
      this.updatedAt});

  ExcluirToDo.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.title = json["title"];
    this.description = json["description"];
    this.completed = json["completed"];
    this.color = json["color"];
    this.user = json["user"] == null ? null : User.fromJson(json["user"]);
    this.publishedAt = json["published_at"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["title"] = this.title;
    data["description"] = this.description;
    data["completed"] = this.completed;
    data["color"] = this.color;
    if (this.user != null) data["user"] = this.user?.toJson();
    data["published_at"] = this.publishedAt;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  int? role;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.username,
      this.email,
      this.provider,
      this.confirmed,
      this.blocked,
      this.role,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.username = json["username"];
    this.email = json["email"];
    this.provider = json["provider"];
    this.confirmed = json["confirmed"];
    this.blocked = json["blocked"];
    this.role = json["role"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["username"] = this.username;
    data["email"] = this.email;
    data["provider"] = this.provider;
    data["confirmed"] = this.confirmed;
    data["blocked"] = this.blocked;
    data["role"] = this.role;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    return data;
  }
}
