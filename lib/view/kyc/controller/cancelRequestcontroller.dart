// CancelRequestService
// StoreHolidayService
// DoctorSlotsService
// PersonalDetailsService
// import 'package:doctorapp/view/Dashboard/profile/personaldetails/service/personal_details.dart';
import 'package:doctorapp/view/allpackages.dart';
import 'package:doctorapp/view/kyc/model/cancelRequestmodel.dart';
// import 'package:doctorapp/view/kyc/model/doctorUpdateslots.dart';
// import 'package:doctorapp/view/kyc/model/storeHolidayCModel.dart';
import 'package:doctorapp/view/kyc/service/cancelRequestservice.dart';
// import 'package:doctorapp/view/kyc/model/doctorslotsmodel.dart';
// import 'package:doctorapp/view/kyc/service/doctorUpdateSlotsservice.dart';
// import 'package:doctorapp/view/kyc/service/storeHolidayservice.dart';
// import 'package:doctorapp/view/kyc/service/doctorslotsservice.dart';

// import '../model/personaldetailsmodel.dart';

class CancelRequestController extends GetxController {
  RxList<CancelRequestModel> cancelRequestList = <CancelRequestModel>[].obs;
  RxBool loadingindicator = false.obs;
  var clint = CancelRequestService();
  Future storeHolidaysControl() async {
    try {
      var responce = await clint.cancelRequestServiceFunction();

      if (responce != null) {
        print("controller=>${cancelRequestList}");
        cancelRequestList.clear();
        cancelRequestList.add(responce);
        loadingindicator(true);
        print("controller=>${cancelRequestList}");
      } else {
        loadingindicator(true);
      }
    } catch (e) {
      rethrow;
    }
  }
}
