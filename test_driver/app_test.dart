import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_integration_test/string.dart';
import 'package:test/test.dart';

void main() {
  group('Flutter Driver demo', () {
    FlutterDriver driver;
    var usernameFinder = find.byValueKey(usernameKeyString);
    var passwordFinder = find.byValueKey(passwordKeyString);
    var btnLoginFinder = find.byValueKey(btnLoginKeyString);

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

//    tearDownAll(() async {
//      if (driver != null) {
//        await driver.close();
//      }
//    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print('Health status =>>>> ${health.status}');
    });

    for (int i = 0; i < 50; i++) {
      test('test login', () async {
        await driver.tap(usernameFinder);
        await driver.enterText('minhduc$i');
        await driver.waitFor(find.text('minhduc$i'));
        await driver.tap(passwordFinder);
        await driver.enterText('pasword$i');
        await driver.waitFor(find.text('pasword$i'));
        await driver.tap(btnLoginFinder);
        //await Future.delayed(Duration(seconds: 1));
        expect(0, 0);
      });
    }
  });
}
