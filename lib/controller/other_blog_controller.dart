import 'package:doctorapp/model/other_blog_model.dart';

import '../service/blog/other_blog_service.dart';

import '../view/allpackages.dart';

class OtherBlogController extends GetxController {
  var otherblogservice = OtherBlogService();
  List<OtherBlogModel> _listdata = [];
  List<OtherBlogModel> get listdata => _listdata;
  RxBool isLoding = true.obs;
  Future otherController() async {
    try {
      var response = await otherblogservice.otherBlogService();

      if (response != null) {
        _listdata.add(response);
        isLoding(false);

        // Fluttertoast.showToast(msg: response.message.toString());
      } else {
        isLoding(false);
        //  Get.back();
        // Fluttertoast.showToast(msg: response.message.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
