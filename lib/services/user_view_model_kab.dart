import 'package:http/http.dart' as http;

class UserViewKab {
  Future getUsersKab() async {
    http.Response hasil = await http.get(
        Uri.parse(
            "https://api.binderbyte.com/wilayah/provinsi?api_key=9fd107f27dfffd6e9452ed8b1deedb27100ad3239b33f2bda58f36726a230684"),
        headers: {"Accept": "application/json"});
    if (hasil.statusCode == 200) {
      print("sukses");
      final data = userModelFromJson(hasil.body);
      return data;
    }
  }

  userModelFromJson(String body) {}
}
