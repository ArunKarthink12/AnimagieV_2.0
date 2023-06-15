// ViewPrescriptionService
// TagListService
// import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/appointment_service.dart';
import 'package:doctorapp/view/Dashboard/appointment/service/viewPrescription.dart';
import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/taglistservice.dart';
import 'package:doctorapp/view/allpackages.dart';

class ViewPrescriptionController extends GetxController {
  List viewPrescriptionList = [];
  RxBool loading = true.obs;
  var clint = ViewPrescriptionService();
  Future viewPrescriptionControllerFunction() async {
    try {
      var responce = await clint.viewPrescriptionServiceFunction();
      if (responce != null) {
        viewPrescriptionList.clear();
        viewPrescriptionList.add(responce);
        loading(false);
      } else {
        loading(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
