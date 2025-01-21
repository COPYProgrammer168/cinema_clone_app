import 'package:cinema_clone_app/Widget_of_cinema/Main_Screen/main_screen.dart';
import 'package:flutter/material.dart';

import 'signin_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  bool _hidePassword = true;
  final _passCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
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
              Icon(Icons.lock, color: Colors.white, size: 50,),
              
              Text("Login Account",
                  style: TextStyle(
                    fontFamily: "Stanley",
                    fontSize: 30,
                    color: Colors.white,
                  )),
              _buildEmail(),
              _buildPassword(),
              _buildLoginButton(),
              _buildSignupButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmail() {
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

  Widget _buildPassword() {
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

  Widget _buildLoginButton() {
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
          if (_emailCtrl.text == "admin" && _passCtrl.text == "admin") {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Login Failed"),
              ),
            );
          }
        },
        child: Text("Login"),
      ),
    );
  }

  Widget _buildSignupButton() {
    return Center(
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            onPressed: () {
              setState(() {
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SigninScreen(),
                ),
              );
              });
            },
            child: Text("Sign up for a new account"),
          ),
        ],
      ),
    );
  }
}