import 'package:login_ui/src/common.dart';
import 'package:login_ui/src/components/my_button.dart';
import 'package:login_ui/src/components/my_image_button.dart';
import 'package:login_ui/src/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                const SizedBox(height: 64),
                const _Logo(),
                const SizedBox(height: 64),
                const _LoginText(),
                const SizedBox(height: 48),
                _UsernameTextField(),
                const SizedBox(height: 16),
                _PasswordTextField(),
                const SizedBox(height: 8),
                const _ForgotPasswordButton(),
                const SizedBox(height: 32),
                const _SignInButton(),
                const SizedBox(height: 48),
                const _ContinueWithText(),
                const SizedBox(height: 48),
                const _GoogleAppleSignInRow(),
                const SizedBox(height: 32),
                const _RegisterButton(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not a member?',
          style: TextStyle(color: Colors.grey.shade700),
        ),
        const SizedBox(width: 4),
        const Text(
          'Register now.',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _GoogleAppleSignInRow extends StatelessWidget {
  const _GoogleAppleSignInRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyImageButton(
          imagePath: 'lib/images/google.png',
          onTap: () {},
        ),
        const SizedBox(width: 8),
        MyImageButton(
          imagePath: 'lib/images/apple.png',
          onTap: () {},
        ),
      ],
    );
  }
}

class _ContinueWithText extends StatelessWidget {
  const _ContinueWithText();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey.shade400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Or continue with',
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton();

  @override
  Widget build(BuildContext context) {
    return MyButton(
      text: 'Sign In',
      onTap: () {},
    );
  }
}

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        )
      ],
    );
  }
}

class _LoginText extends StatelessWidget {
  const _LoginText();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome back you've been missed",
      style: TextStyle(
        color: Colors.grey.shade700,
        fontSize: 16,
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.lock,
      size: 100,
    );
  }
}

class _UsernameTextField extends StatelessWidget {
  _UsernameTextField();

  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      controller: _usernameController,
      hintText: 'Username',
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  _PasswordTextField();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      controller: _passwordController,
      hintText: 'Password',
      obscureText: true,
    );
  }
}
