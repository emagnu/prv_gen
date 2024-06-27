//  //   ///
//  IMPORT LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  IMPORT FILES
//  PARTS
part 'hello_world_provider.g.dart';
//  //   ///

//  PROVIDER = helloWorldProvider
@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hola Mundo!';
}
