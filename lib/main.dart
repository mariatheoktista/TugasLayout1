import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Poppins',
      ),
      title: 'My App',
      home: LoginPage(), // Gunakan LoginPage sebagai halaman awal
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/pin.png',
            width: 32.0, // Sesuaikan ukuran gambar
            height: 32.0,
          ),
        ),
        title: Text('Login Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/core.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 300, // Sesuaikan lebar kontainer sesuai kebutuhan Anda
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.red, // Latar belakang berwarna merah
                borderRadius: BorderRadius.circular(20.0), // Membuat sudut kotak
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Welcome to Pinterest!',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_2_rounded),
                      labelText: 'Username',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    obscureText: true, // Untuk menyembunyikan kata sandi
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_clock_rounded),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}