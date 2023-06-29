import 'dart:developer';

// import '../model/kyc_static_model.dart';
// import '../service/forgotpassword_service.dart';
// import '../service/kycstatic_service.dart';
import '../view/allpackages.dart';

class KycStaticController extends GetxController {
  var kycstatticservice = KycStaticService();
  List<KycStaticModel> _listdata = [];
  List<KycStaticModel> get listdata => _listdata;
  RxBool loading = true.obs;
  Future kycStaticController() async {
    try {
      var response = await kycstatticservice.kycStatic();
      // log('mobile---${response}');
      if (response != null) {
        _listdata.clear();
        _listdata.add(response);
        loading(false);
        // Fluttertoast.showToast(msg: "Success controller");
      } else {
        loading(false);

        // Fluttertoast.showToast(msg: "failed controller");
      }
    } catch (e) {
      rethrow;
    }
  }
}
