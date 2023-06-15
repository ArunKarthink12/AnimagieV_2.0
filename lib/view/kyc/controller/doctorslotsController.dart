// DoctorSlotsService
// PersonalDetailsService
// import 'package:doctorapp/view/Dashboard/profile/personaldetails/service/personal_details.dart';
import 'package:doctorapp/view/allpackages.dart';
import 'package:doctorapp/view/kyc/model/doctorslotsmodel.dart';
import 'package:doctorapp/view/kyc/service/doctorslotsservice.dart';

// import '../model/personaldetailsmodel.dart';

class DoctorSlotsController extends GetxController {
  RxList<DoctorSlotsModel> doctorSlotList = <DoctorSlotsModel>[].obs;
  RxBool loadingindicator = false.obs;
  var clint = DoctorSlotsService();
  Future doctorSlotControl() async {
    try {
      var responce = await clint.doctorSlotsServiceFunction();

      if (responce != null) {
        print("controller=>${doctorSlotList}");
        doctorSlotList.clear();
        doctorSlotList.add(responce);
        loadingindicator(true);
        print("controller=>${doctorSlotList}");
      } else {
        loadingindicator(true);
      }
    } catch (e) {
      rethrow;
    }
  }
}
