
class Autenticacao {
    String? authorization;

    Autenticacao({this.authorization});

    Autenticacao.fromJson(Map<String, dynamic> json) {
        this.authorization = json["Authorization"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["Authorization"] = this.authorization;
        return data;
    }
}