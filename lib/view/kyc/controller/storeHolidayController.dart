// StoreHolidayService
// DoctorSlotsService
// PersonalDetailsService
// import 'package:doctorapp/view/Dashboard/profile/personaldetails/service/personal_details.dart';
import 'package:doctorapp/view/allpackages.dart';
// import 'package:doctorapp/view/kyc/model/doctorUpdateslots.dart';
import 'package:doctorapp/view/kyc/model/storeHolidayCModel.dart';
// import 'package:doctorapp/view/kyc/model/doctorslotsmodel.dart';
// import 'package:doctorapp/view/kyc/service/doctorUpdateSlotsservice.dart';
import 'package:doctorapp/view/kyc/service/storeHolidayservice.dart';
// import 'package:doctorapp/view/kyc/service/doctorslotsservice.dart';

// import '../model/personaldetailsmodel.dart';

class StoreHolidaysController extends GetxController {
  RxList<StoreHolidaysModel> storeHolidaysList = <StoreHolidaysModel>[].obs;
  RxBool loadingindicator = false.obs;
  var clint = StoreHolidayService();
  Future storeHolidaysControl() async {
    try {
      var responce = await clint.storeHolidayServiceFunction();

      if (responce != null) {
        print("controller=>${storeHolidaysList}");
        storeHolidaysList.clear();
        storeHolidaysList.add(responce);
        loadingindicator(true);
        print("controller=>${storeHolidaysList}");
      } else {
        loadingindicator(true);
      }
    } catch (e) {
      rethrow;
    }
  }
}
