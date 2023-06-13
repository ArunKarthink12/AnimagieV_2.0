import 'dart:developer';

// import '../model/kyc_static_model.dart';
// import '../service/forgotpassword_service.dart';
// import '../service/kycstatic_service.dart';
import '../view/allpackages.dart';

class KycStaticController extends GetxController {
  var kycstatticservice = KycStaticService();
  List<KycStaticModel> _listdata = [];
  List<KycStaticModel> get listdata => _listdata;

  Future kycStaticController() async {
    try {
      var response = await kycstatticservice.kycStatic();
      log('mobile---${response}');
      if (response != null) {
        Fluttertoast.showToast(msg: response.message.toString());
      } else {
        // Fluttertoast.showToast(msg: response.message.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
