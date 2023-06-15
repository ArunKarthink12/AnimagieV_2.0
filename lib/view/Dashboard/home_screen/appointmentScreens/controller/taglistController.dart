// TagListService
// import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/appointment_service.dart';
import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/taglistservice.dart';
import 'package:doctorapp/view/allpackages.dart';

class TagListController extends GetxController {
  List tagListList = [];
  RxBool loading = true.obs;
  var clint = TagListService();
  Future tagListControllerFunction() async {
    try {
      var responce = await clint.tagListServiceFunction();
      if (responce != null) {
        tagListList.clear();
        tagListList.add(responce);
        loading(false);
      } else {
        loading(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
