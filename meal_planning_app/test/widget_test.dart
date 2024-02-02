import 'package:flutter_test/flutter_test.dart';
import 'package:meal_planning_app/screens/log_and_sign/login_page.dart';
import 'package:meal_planning_app/screens/log_and_sign/register_page.dart';

void main() {
  group('LoginPage Tests', () {
    test('Valid input should return true', () {
      // Arrange
      LoginPage loginPage = LoginPage();
      loginPage.emailController.text = 'test@example.com';
      loginPage.passwordController.text = 'password123';

      // Act
      bool result = loginPage.isNotEmpty();

      // Assert
      expect(result, true);
    });

    test('Empty email should return false', () {
      // Arrange
      LoginPage loginPage = LoginPage();
      loginPage.emailController.text = '';
      loginPage.passwordController.text = 'password123';

      // Act
      bool result = loginPage.isNotEmpty();

      // Assert
      expect(result, false);
    });

    test('Empty password should return false', () {
      // Arrange
      LoginPage loginPage = LoginPage();
      loginPage.emailController.text = 'test@example.com';
      loginPage.passwordController.text = '';

      // Act
      bool result = loginPage.isNotEmpty();

      // Assert
      expect(result, false);
    });

    test('Empty email and password should return false', () {
      // Arrange
      LoginPage loginPage = LoginPage();
      loginPage.emailController.text = '';
      loginPage.passwordController.text = '';

      // Act
      bool result = loginPage.isNotEmpty();

      // Assert
      expect(result, false);
    });
  });
  group('RegisterPage Tests', () {
    test('Valid input should return true', () {
      // Arrange
      RegisterPage registerPage = RegisterPage();
      registerPage.usernameController.text = 'testuser';
      registerPage.emailController.text = 'test@example.com';
      registerPage.passwordController.text = 'password123';
      registerPage.confirmPwController.text = 'password123';

      // Act
      bool result = registerPage.isNotEmpty() && registerPage.passwordsMatch();

      // Assert
      expect(result, true);
    });

    test('Empty username should return false', () {
      // Arrange
      RegisterPage registerPage = RegisterPage();
      registerPage.usernameController.text = '';
      registerPage.emailController.text = 'test@example.com';
      registerPage.passwordController.text = 'password123';
      registerPage.confirmPwController.text = 'password123';

      // Act
      bool result = registerPage.isNotEmpty() && registerPage.passwordsMatch();

      // Assert
      expect(result, false);
    });

    test('Empty email should return false', () {
      // Arrange
      RegisterPage registerPage = RegisterPage();
      registerPage.usernameController.text = 'testuser';
      registerPage.emailController.text = '';
      registerPage.passwordController.text = 'password123';
      registerPage.confirmPwController.text = 'password123';

      // Act
      bool result = registerPage.isNotEmpty() && registerPage.passwordsMatch();

      // Assert
      expect(result, false);
    });

    test('Empty password should return false', () {
      // Arrange
      RegisterPage registerPage = RegisterPage();
      registerPage.usernameController.text = 'testuser';
      registerPage.emailController.text = 'test@example.com';
      registerPage.passwordController.text = '';
      registerPage.confirmPwController.text = 'password123';

      // Act
      bool result = registerPage.isNotEmpty() && registerPage.passwordsMatch();

      // Assert
      expect(result, false);
    });

    test('Empty confirm password should return false', () {
      // Arrange
      RegisterPage registerPage = RegisterPage();
      registerPage.usernameController.text = 'testuser';
      registerPage.emailController.text = 'test@example.com';
      registerPage.passwordController.text = 'password123';
      registerPage.confirmPwController.text = '';

      // Act
      bool result = registerPage.isNotEmpty() && registerPage.passwordsMatch();

      // Assert
      expect(result, false);
    });

  });
}
