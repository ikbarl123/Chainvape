import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
     required this.user,
     required this.token,
    });

    UserClass user;
    String token;

    factory User.fromJson(Map<String, dynamic> json) => User(
        user: UserClass.fromJson(json["user"]),
        token: json["token"],
    );

    Map<String?, dynamic> toJson() => {
        "user": user.toJson(),
        "token": token,
    };
}

class UserClass {
    UserClass({
        required this.id,
        required this.name,
        required this.email,
    });

    int id;
    String name;
    String email;

    factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        id: json["id"],
        name: json["name"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
    };
}