import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: header());
  }
}

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //'LOG IN PAGE TITLE start'
      appBar: AppBar(
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'login',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
      ),

      // //'LOG IN PAGE TITLE END'
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          // Username, Password, Buttons ...
          children: [
            //text feild st
            const Text(
              'Username',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.bold,
              ),
            ),

            //username st
            const TextField(
              decoration: InputDecoration(
                hintText: 'Type your username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.bold,
              ),
            ),

            //password st
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                // labelText: 'Password',
                hintText: 'Type your password',
                hintStyle: TextStyle(fontFamily: 'Roboto'),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),

            //forgot password st
            const SizedBox(height: 2),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),

            //login button st
            const SizedBox(height: 26),
            Align(
              alignment: Alignment.center,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(800, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),

                  backgroundColor: const Color.fromARGB(255, 84, 85, 85),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 18,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            //login button end

            //continue with google
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4285F4), // Google Blue
                foregroundColor: Colors.white, // Text color
                minimumSize: const Size(double.infinity, 50), // Full width
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Continue with Google',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
