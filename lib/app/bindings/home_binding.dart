
import 'package:get/get.dart';
import '../controllers/home_controller.dart';


class HomeBinding implements Binding {
  @override
  List<Bind> dependencies() => [Bind.lazyPut(()=>HomeController())];
   
}