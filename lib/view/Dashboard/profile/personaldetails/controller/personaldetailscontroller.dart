// PersonalDetailsService
import 'package:doctorapp/view/Dashboard/profile/personaldetails/service/personal_details.dart';
import 'package:doctorapp/view/allpackages.dart';

import '../model/personaldetailsmodel.dart';

class PersonalDetailsController extends GetxController {
  RxList<DoctorDetailsModel> doctorDetailsList = <DoctorDetailsModel>[].obs;
  RxBool loadingindicator = false.obs;
  var clint = PersonalDetailsService();
  Future personalDetailsControl() async {
    try {
      var responce = await clint.personalDetailsServiceFunction();

      if (responce != null) {
        print("controller=>${doctorDetailsList}");
        doctorDetailsList.clear();
        doctorDetailsList.add(responce);
        loadingindicator(true);
        print("controller=>${doctorDetailsList}");
      } else {
        loadingindicator(true);
      }
    } catch (e) {
      rethrow;
    }
  }
}
