import 'package:flutter/material.dart';
//import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'quiz.dart';



// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   const keyApplicationId = '4Z8a6tDYzPqbRoafR7Ot16KSYkE5coRnC9V2cCm6';
//   const keyClientKey = 'hxS35VKbbTcLX4WldsBLTZ3WtUrHHULmuwCSJdhS';
//   const keyParseServerUrl = 'https://parseapi.back4app.com';

//   await Parse().initialize(keyApplicationId, keyParseServerUrl,
//       clientKey: keyClientKey, autoSendSessionId: true);
//       var firstObject = ParseObject('FirstClass')
//     ..set(
//         'message', 'Hey ! First message from Flutter. Parse is now connected');
//   await firstObject.save();
  
//   print('done');
      
      
//  runApp(const Quiz());
// }

void main(){
  runApp(const Quiz());
}
