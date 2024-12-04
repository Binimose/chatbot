

class UserDetail {
  final String name; 

  UserDetail({required this.name, required this.address});
  Map<String,dynamic> getJson()=>{
    'name':name,
     
  };
   factory UserDetail.getModelFromJson(Map<String, dynamic> json) {
    return UserDetail(name: json["name"]);
  }

}