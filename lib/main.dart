import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/whitebg.png',
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Left Side Image (Hide for smaller screens)
                  if (size.width > 800)
                    Expanded(
                      flex: 11,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/ship.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  // Login Form (On white card)
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Expanded(
                    flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //logo
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              height: 20,
                            ),
                            SizedBox(width: width * 0.008),
                            Image.asset(
                              'assets/images/demo.png',
                              height: 20,
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: height * 0.2,
                        // ),
                        SizedBox.fromSize(
                          size: const Size.fromHeight(150),
                        ),

                        Card(
                          color: Colors.white,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: height * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  // Logo
                                  Center(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(233, 245, 254,
                                                1), // rgba(233, 245, 254, 1)
                                            blurRadius:
                                                2, // Adjust this for halo size
                                            spreadRadius:
                                                2, // Adjust this for halo thickness
                                          ),
                                        ],
                                      ),
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/images/logo.png',
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 24),
                                  // Welcome Back Text
                                  const Text(
                                    'Welcome Back',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 8),
                                  // Subtitle
                                  Text(
                                    'We are glad to see you',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[600],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 24),
                                  // Username TextField
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Username',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Password TextField
                                  TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Login Button
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color.fromRGBO(53, 167, 215, 1),
                                          Color.fromRGBO(68, 90, 130, 1),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        textStyle: const TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                      child: const Text(
                                        'LOGIN',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  // Forgot Password
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('Forgot Password?'),
                                  ),
                                  //copyright info
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: const Size.fromHeight(150),
                        ),
                        // Footer
                        SizedBox(
                          width: width * 0.4,
                          child: const Text(
                            '© 2024 DEMO GROUP. All Rights Reserved',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(102, 102, 102, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
