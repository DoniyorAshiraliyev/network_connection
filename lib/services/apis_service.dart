enum Api {
  album("/albums"),
  post("/posts"),
  comment("/comments"),
  todo("/todos"),
  user("/users"),
  photo("/photos");

  const Api(this.path);
  final String path;

  static final baseUrl = "jsonplaceholder.typicode.com";
}