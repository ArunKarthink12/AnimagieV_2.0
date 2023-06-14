import 'dart:convert';
import 'dart:developer';
import '../../view/allpackages.dart';

import 'package:http/http.dart' as http;

import '../model/login_model.dart';

class LoginService {
  Future<Loginmodel?> loginService({email, password}) async {
    try {
      var data = {
        // newdoctor@gmail.com
        // 12345678
        'email': email.toString(),
        'password': password.toString(),
        "type": '0'
      };
      print(data.toString());
      var response = await http.post(
          Uri.parse('https://jooju.in/app-demo/public/api/login-doctor'),
          body: data);
      var jsonresponse = json.decode(response.body);
      print(response.body);
      print(jsonresponse);
      if (response.statusCode == 200) {
        log('successs-------------------------------');
        Fluttertoast.showToast(msg: "success");
        return Loginmodel.fromJson(jsonresponse);
      } else {
        log('failure-------------------------------');

        Fluttertoast.showToast(msg: "Failed");
      }
    } catch (e) {
      rethrow;
    }
  }

//   Future loginService({email, password}) async {
//     var data = {
//       'email': email.toString(),
//       'password': password.toString(),
//       "type": '0'
//     };
//     // var encodedata = jsonEncode(data);
//     // print(data.toString());
//     try {
//       var response = await http.post(
//           Uri.parse('https://jooju.in/app-demo/public/api/login-doctor'),
//           body: data);
//       // print(response.toString());

//       // print(jsonresponse.toString());
//       if (response.statusCode == 200) {
//         print('kowsiiiiii');
//         var jsonresponse = jsonDecode(response.body);

//         log('successs-------------------------------');
//         log('${jsonresponse['token']}');
//         Fluttertoast.showToast(msg: jsonresponse['message'].toString());

//         return LoginModel.fromJson(jsonresponse);
//       } else {
//         Fluttertoast.showToast(msg: response.statusCode.toString());
//         Get.back();
//       }
//     } catch (e) {
//       rethrow;
//     }
//   }
}
