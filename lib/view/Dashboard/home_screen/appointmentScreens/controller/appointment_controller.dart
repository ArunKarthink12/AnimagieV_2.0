import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/service/appointment_service.dart';
import 'package:doctorapp/view/allpackages.dart';

class AppointmentController extends GetxController {
  List appointmentList = [];
  bool loading = true;
  var clint = AppointmentService();
}
