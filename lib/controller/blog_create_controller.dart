// import 'dart:developer';
import 'dart:io';

// import 'package:doctorapp/model/other_blog_model.dart';

// import '../model/blog_create_model.dart';
// import '../service/blog/blog_create_service.dart';
// import '../service/blog/other_blog_service.dart';

import '../view/allpackages.dart';

class BlogCreateController extends GetxController {
  var blogCreateservice = BlogCreateService();
  List<BlogCreateModel> _listdata = [];
  List<BlogCreateModel> get listdata => _listdata;
  RxBool isLoding = true.obs;
  Rx<File> image = File('').obs;
  TextEditingController topic = TextEditingController();
  TextEditingController content = TextEditingController();
  Future blogcreateController() async {
    try {
      var response = await blogCreateservice.blogCreateService(
          image: image.value, topic: topic.text, content: content.text);

      if (response != null) {
        _listdata.add(response);
        isLoding(false);

        // Fluttertoast.showToast(msg: response.message.toString());
      } else {
        isLoding(false);
        Get.back();
        // Fluttertoast.showToast(msg: response.message.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
