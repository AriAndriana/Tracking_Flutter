import 'dart:convert';

import 'package:flutter_widget/api/global_model.dart';
import 'package:http/http.dart';

class GlobalService{
  final String globalUrl = "https://api.kawalcorona.com/positif";

  Future<List<Global>> getPost() async{
    Response res = await get(globalUrl);

    if(res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Global> global = 
        body.map((dynamic item) => Global.fromJson(item)).toList(); 
        
        return global;
    } else{
      throw "Data tidak Ditemukan";
    }
  }
}