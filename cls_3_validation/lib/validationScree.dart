import 'package:flutter/material.dart';

class ValidationScreen extends StatefulWidget {
  final String email;
  final String password;

  const ValidationScreen({super.key, required this.email, required this.password});

  @override
  State<ValidationScreen> createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  bool isValidating = true;
  String message = "Validating...";

  @override
  void initState() {
    super.initState();

    // Simulate backend validation
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        final email = widget.email.trim();
        final password = widget.password.trim();

        // Email must end with @dipti.com.bd
        final emailValid = email.endsWith("@dipti.com.bd");

        // Password regex: at least one uppercase, one lowercase, one number, one special char, 6+ chars
        final passwordValid = RegExp(
            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$'
        ).hasMatch(password);

        if (emailValid && passwordValid) {
          message = "✅ Validation successful!";
          isValidating = false;
          Future.delayed(const Duration(seconds: 1), () {
            Navigator.pushReplacementNamed(context, '/home');
          });
        } else {
          message = "❌ Invalid email or password!";
          isValidating = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isValidating) const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Text(message, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 20),
            if (!isValidating && message.startsWith("❌"))
              ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(context, '/signin'),
                child: const Text("Try Again"),
              ),
          ],
        ),
      ),
    );
  }
}