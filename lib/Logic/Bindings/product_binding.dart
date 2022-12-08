import 'package:bookshop/Logic/Controller/prodect_controller.dart';
import 'package:get/get.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ProdectController>(ProdectController());
  }
}
