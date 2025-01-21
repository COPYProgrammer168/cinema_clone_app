import 'package:flutter/material.dart';

import 'login_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool get wantKeepAlive => true;
  bool _hidePassword = true;
  final _passCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: _buildMainSignin(),
    );
  }

  Widget _buildMainSignin() {
    return Center(
        child: Container(
      margin: EdgeInsets.all(6),
      constraints: BoxConstraints(
        maxWidth: 300,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              color: Colors.white,
              size: 50,
            ),
            Text("Signin Account",
                style: TextStyle(
                  fontFamily: "Stanley",
                  fontSize: 30,
                  color: Colors.white,
                )),
            _buildemail(),
            _buildpass(),
            _buildConfirmPass(),
            _buildButtom(),
            // _buildSigninGoogle(),
          ],
        ),
      ),
    ));
  }

  Widget _buildemail() {
    return TextField(
      controller: _emailCtrl,
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: 15, color: Colors.white),
        hintText: "Enter your email",
        hintStyle: TextStyle(fontSize: 15, color: Colors.white54),
        labelText: "Ëmail",
        icon: Icon(Icons.email),
        iconColor: Colors.white,
        border: InputBorder.none,
      ),
    );
  }

  Widget _buildpass() {
    return TextField(
      controller: _passCtrl,
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelStyle: const TextStyle(fontSize: 15, color: Colors.white),
        hintText: "Enter your Password",
        hintStyle: const TextStyle(fontSize: 15, color: Colors.white54),
        labelText: "Password",
        icon: const Icon(Icons.key),
        iconColor: Colors.white,
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
            icon:
                Icon(_hidePassword ? Icons.visibility : Icons.visibility_off)),
        border: InputBorder.none,
      ),
      obscureText: _hidePassword,
    );
  }

  Widget _buildConfirmPass() {
    return TextField(
      controller: _confirmCtrl,
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelStyle: const TextStyle(fontSize: 15, color: Colors.white),
        hintText: "Enter Confirm Password",
        hintStyle: const TextStyle(fontSize: 15, color: Colors.white54),
        labelText: "Comfirm",
        icon: const Icon(Icons.key),
        iconColor: Colors.white,
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
            icon:
                Icon(_hidePassword ? Icons.visibility : Icons.visibility_off)),
        border: InputBorder.none,
      ),
      obscureText: _hidePassword,
    );
  }

  Widget _buildButtom() {
    return Container(
      margin: EdgeInsets.all(10),
      width: 300,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          if (_emailCtrl.text == "admin" &&
              _passCtrl.text == "admin" &&
              _confirmCtrl.text == "admin") {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Signin Failed"),
              ),
            );
          }
        },
        child: Text("Signin"),
      ),
    );
  }

  // Widget _buildSigninGoogle() {
  //   return Container(
  //     height: 50,
  //     child: ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: Colors.blue,
  //         foregroundColor: Colors.white,
  //       ),
  //       onPressed: () async {
  //         final user = await GoogleSignInService.signInWithGoogle();
  //         if (user != null) {
  //           Navigator.of(context).push(
  //             MaterialPageRoute(
  //               builder: (context) => LoginScreen(),
  //             ),
  //           );
  //         } else {
  //           ScaffoldMessenger.of(context).showSnackBar(
  //             SnackBar(
  //               content: Text("Google Signin Failed"),
  //             ),
  //           );
  //         }
  //       },
  //       child: Text("Signin with Google"),
  //     ),
  //   );
  // }
}
