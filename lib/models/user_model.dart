class User {
  final String username;
  final String password;

  User({required this.username, required this.password});

  // Convert a User into a Map object for MongoDB
  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
    };
  }

  // Convert a Map object from MongoDB into a User object
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'],
      password: map['password'],
    );
  }
}
