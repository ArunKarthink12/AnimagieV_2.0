// import 'dart:developer';
import 'dart:io';

// import 'package:doctorapp/model/other_blog_model.dart';

// import '../model/blog_create_model.dart';
// import '../service/blog/blog_create_service.dart';
// import '../service/blog/other_blog_service.dart';

import '../view/allpackages.dart';

class BlogCreateController extends GetxController {
  YourBlogController yourBlogController = Get.put(YourBlogController());

  var blogCreateservice = BlogCreateService();
  List<BlogCreateModel> _listdata = [];
  List<BlogCreateModel> get listdata => _listdata;
  RxBool isLoding = true.obs;
  Rx<File> image = File('').obs;
  TextEditingController topic = TextEditingController();
  TextEditingController content = TextEditingController();
  Future blogcreateController(context) async {
    try {
      var response = await blogCreateservice.blogCreateService(
          image: image.value.path, topic: topic.text, content: content.text);
      _listdata.clear();
      if (response != null) {
        _listdata.clear();

        _listdata.add(response);
        isLoding(false);
        popup(context, "assets/images/blogcreate.png");
        Fluttertoast.showToast(msg: "Data added");

        // Fluttertoast.showToast(msg: response.message.toString());
      } else {
        isLoding(false);
        // Get.back();
        popup(context, "assets/images/unsuccess.png");
        Fluttertoast.showToast(msg: "Data not added");
      }
    } catch (e) {
      rethrow;
    }
  }

  popup(context, title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.transparent,
            // title: Text('Dialog Title'),
            content: GestureDetector(
              onTap: () {
                _listdata.isEmpty ? Get.back() : doubleback();
              },
              child: SizedBox(
                child: Image.asset(title),
              ),
            ));
      },
    );
  }

  doubleback() {
    Future.delayed(Duration.zero, () async {
      await yourBlogController.yourController();
      Get.back();
      Get.back();
    });
  }
}
