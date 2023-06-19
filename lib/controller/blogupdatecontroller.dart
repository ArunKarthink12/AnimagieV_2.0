// import 'dart:developer';
import 'dart:io';

// import 'package:doctorapp/model/other_blog_model.dart';

// import '../model/blog_create_model.dart';
// import '../service/blog/blog_create_service.dart';
// import '../service/blog/other_blog_service.dart';

import 'package:doctorapp/model/editblocmodel.dart';

import '../service/blog/editblogservice.dart';
import '../view/allpackages.dart';

class EditBlogController extends GetxController {
  var editblogservice = EditBlogService();
  List<EditBlogModel> _listdata = [];
  List<EditBlogModel> get listdata => _listdata;
  RxBool isLoding = true.obs;
  Rx<File> image = File('').obs;
  TextEditingController topic = TextEditingController();
  TextEditingController content = TextEditingController();
  // TextEditingController id = TextEditingController();
  Future editBlogcreateController(context) async {
    try {
      var response = await editblogservice.editBlogService(
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
    Get.back();
    Get.back();
  }
}
