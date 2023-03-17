class Album {
  int userId;
  int id;
  String title;

  Album(this.userId, this.id, this.title);

  factory Album.fromJson(Map<String, dynamic> json) {
    int userId = json['userId'];
    int id = json['id'];
    String title = json['title'];

    return Album(userId, id, title);
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };

  @override
  String toString() {
    return 'Album{userId: $userId, id: $id, title: $title}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Album &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title;

  @override
  int get hashCode => Object.hash(userId, id, title);
}

