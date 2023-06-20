// import 'dart:convert';

// import 'package:doctorapp/model/other_blog_model.dart';

// import '../service/blog/other_blog_service.dart';

import '../view/allpackages.dart';

class YourBlogController extends GetxController {
  var yourblogservice = YourBlogService();
  // List<YourBlogModel> _listdata = [];
  RxList<YourBlogModel> listdata = <YourBlogModel>[].obs;
  RxBool isLoding = true.obs;
  Future yourController() async {
    print("controller=>");

    try {
      var response = await yourblogservice.yourBlogService();

      print("controllerzz=>");
      if (response != null) {
        print("controlleryy=> ");
        listdata.clear();
        listdata.add(response);
        print("controller=>${response}");

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
