import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/appointment_service.dart';
import 'package:doctorapp/view/allpackages.dart';

class AppointmentController extends GetxController {
  List appointmentList = [];
  RxBool loading = true.obs;
  var clint = AppointmentService();
  Future appointmentListControllerFunction() async {
    try {
      var responce = await clint.appointmentServiceFunction();
      if (responce != null) {
        appointmentList.clear();
        appointmentList.add(responce);
        loading(false);
      } else {
        loading(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
