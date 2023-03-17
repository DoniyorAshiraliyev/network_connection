class Airline {
  late int id;
  late String name;
  late String country;
  late String logo;
  late String slogan;
  late String headQuaters;
  late String website;
  late String established;

  Airline.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    name = json['name'] as String;
    country = json['country'] as String;
    logo = json['logo'] as String;
    slogan = json['slogan'] as String;
    headQuaters = json['head_quaters'] as String;
    website = json['website'] as String;
    established = json['established'] as String;
  }

  @override
  String toString() {
    return 'Airline{id: $id, name: $name, country: $country, logo: $logo, slogan: $slogan, headQuaters: $headQuaters, website: $website, established: $established}';
  }
}
