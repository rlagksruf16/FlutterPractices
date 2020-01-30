import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    
    if( response.statusCode == 200) {  // 데이터가 정확하게 전송되었는지
      String data = response.body;
      
      return jsonDecode(data);  //정확하게 되었으면 JSON 파일을 다시 디코드하기
    }
    else {
      print(response.statusCode);
    }
  }
}