import 'package:e_commerce/common/widgets/network/network_manager.dart';
import 'package:get/get.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies(){
    Get.put(NetworkManager());
  }
}