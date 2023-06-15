// AttenNowService
// TagListService
// import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/appointment_service.dart';
import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/attenNowservice.dart';
import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/taglistservice.dart';
import 'package:doctorapp/view/allpackages.dart';

class AttenNowController extends GetxController {
  List attenNowList = [];
  RxBool loading = true.obs;
  var clint = AttenNowService();
  Future attenNowControllerFunction() async {
    try {
      var responce = await clint.attenNowServiceFunction();
      if (responce != null) {
        attenNowList.clear();
        attenNowList.add(responce);
        loading(false);
      } else {
        loading(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
