import 'package:Flutter_app/Pages/SignInPage.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Username(false) returns a string error message", () {
    var result = UsernameValidatorr.validate(false, "username incorrect");
    expect(result, "username incorrect");
  });
  test("Username(true) returns null", () {
    var result = UsernameValidatorr.validate(true, "");
    expect(result, null);
  });
  test("Password(false) returns a string error message", () {
    var result = PasswordValidatorr.validate(false, "password incorrect");
    expect(result, "password incorrect");
  });
  test("Password(true) returns mull", () {
    var result = PasswordValidatorr.validate(true, "");
    expect(result, null);
  });

}
