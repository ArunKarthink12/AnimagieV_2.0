// DoctorSlotsService
// PersonalDetailsService
// import 'package:doctorapp/view/Dashboard/profile/personaldetails/service/personal_details.dart';
import 'package:doctorapp/view/allpackages.dart';
import 'package:doctorapp/view/kyc/model/doctorUpdateslots.dart';
// import 'package:doctorapp/view/kyc/model/doctorslotsmodel.dart';
import 'package:doctorapp/view/kyc/service/doctorUpdateSlotsservice.dart';
// import 'package:doctorapp/view/kyc/service/doctorslotsservice.dart';

// import '../model/personaldetailsmodel.dart';

class DoctorUpdateSlotsController extends GetxController {
  RxList<DoctorUpdateSlotsModel> doctorUpdateSlotList =
      <DoctorUpdateSlotsModel>[].obs;
  RxBool loadingindicator = false.obs;
  var clint = DoctorUpdateSlotsService();
  Future doctorUpdateSlotsControl() async {
    try {
      var responce = await clint.doctorUpdateSlotsServiceFunction();

      if (responce != null) {
        print("controller=>${doctorUpdateSlotList}");
        doctorUpdateSlotList.clear();
        doctorUpdateSlotList.add(responce);
        loadingindicator(true);
        print("controller=>${doctorUpdateSlotList}");
      } else {
        loadingindicator(true);
      }
    } catch (e) {
      rethrow;
    }
  }
}
