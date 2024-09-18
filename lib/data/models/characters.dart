class Charcter {
  late int charId;
  late String name;
  late String nickName;
  late String image;
  late List<dynamic> jobs;
  late String status;
  late List<dynamic> apperance;
  late String actorName;
  late String category;
  late List<dynamic> betterCallSaulApperance;
  Charcter.fromjson(Map<String, dynamic> json) {
    charId = json["char_Id"];
    name = json["name"];
    nickName = json["nickname"];
    image = json["img"];
    jobs = json["occupation"];
    status = json["status"];
    apperance = json["apperance"];
    actorName = json["portrayed"];
    category = json["category"];
    betterCallSaulApperance = json["better_call_saul_apperance"];
  }
}
