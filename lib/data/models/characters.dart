class Character {
  //late int charId;
  late int id;
  late String name;
  //late String nickName;
  //late String birthday;
  late String image;
 // late List<dynamic> jobs;
  late String statusIfDeadOrAlive;
  //late List<dynamic> appearanceOfSeasons;
  //late String actorName;
  //late String categoryForTowSeries;
  //late List<dynamic> betterCallSoulAppearance;

  Character.fromJson(Map<String, dynamic> json) {
    //charId = json['char_id'];
    id = json['id'];
    name= json['name'];
   // nickName = json['nickname'];
   // birthday = json['birthday'];
    //image = json['img'];
    image = json['image'];
   // jobs = json['occupation'];
    statusIfDeadOrAlive = json['status'];
    //appearanceOfSeasons = json['appearance'];
    //actorName = json['portrayed'];
    //categoryForTowSeries = json['category'];
    //betterCallSoulAppearance = json['better_call_saul_appearance'];
  }
}