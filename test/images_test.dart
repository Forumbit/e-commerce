import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.books).existsSync(), true);
    expect(File(Images.computer).existsSync(), true);
    expect(File(Images.favoriteFill).existsSync(), true);
    expect(File(Images.favoriteOutline).existsSync(), true);
    expect(File(Images.filter).existsSync(), true);
    expect(File(Images.geolocation).existsSync(), true);
    expect(File(Images.health).existsSync(), true);
    expect(File(Images.person).existsSync(), true);
    expect(File(Images.phone).existsSync(), true);
    expect(File(Images.qr).existsSync(), true);
    expect(File(Images.shop).existsSync(), true);
  });
}
