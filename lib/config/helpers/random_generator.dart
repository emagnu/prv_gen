//  //   ///
//  IMPORT LIBRARIES
import 'package:random_name_generator/random_name_generator.dart';
//  IMPORT FILES
//  //   ///

class RandomGenerator {
  static String getRandomName() {
    final randomNames = RandomNames(Zone.spain);
    return randomNames.fullName();
  }

  static Stream<String> randomNameStream() {
    return Stream.periodic(const Duration(seconds: 2), (i) => getRandomName())
        .take(10);
  }
}
