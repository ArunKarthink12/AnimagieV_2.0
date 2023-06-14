import 'dart:convert';

import 'package:doctorapp/model/other_blog_model.dart';

import '../service/blog/other_blog_service.dart';

import '../view/allpackages.dart';

class OtherBlogController extends GetxController {
  var otherblogservice = OtherBlogService();
  // List<OtherBlogModel> _listdata = [];
  var view = "1";
  List<OtherBlogModel> listdata = [];
  RxBool isLoding = true.obs;
  Future otherController() async {
    print("controller=>");

    try {
      var response = await otherblogservice.otherBlogService(view: view);

      print("controllerzz=>");
      if (response != null) {
        print("controlleryy=> ");
        listdata.clear();
        listdata.add(response ?? "");
        print("controller=>${listdata}");

        isLoding(false);
      } else {
        print("fcontroller=>");

        // print("fcontroller=>${listdata}");
        isLoding(false);
      }
    } catch (e) {
      print("e==>${e}");
      rethrow;
    }
    // try {
    //   isLoding(true);
    //   var response = await otherblogservice.otherBlogService();
    //   listdata.clear();

    //   if (response != null) {
    //     listdata.clear();
    //     // var data = jsonEncode(response);
    //     listdata.add(response);
    //     print("controller=>${listdata}");
    //     isLoding(false);
    //   } else {
    //     isLoding(false);
    //     //  Get.back();
    //     // Fluttertoast.showToast(msg: response.message.toString());
    //   }
    // } catch (e) {
    //   rethrow;
    // }
  }
}
