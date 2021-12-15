import 'package:flutter_driver/flutter_driver.dart';
import '../keywords/test.dart' as flutterTest;
import 'package:test/test.dart';

void main(){
  group ('Flutter test demo',()
  {
    FlutterDriver driver;
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test("Flutter Field Test: ", () async {
      await flutterTest.fieldText(driver);
    });

    test("Increment Test: ", () async {
      await flutterTest.incrementTest(driver);
    });

    tearDownAll( () async {
      if (driver != null) {
        await driver.close();
      }
    });
  });
}