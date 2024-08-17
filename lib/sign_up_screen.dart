import 'package:flutter/material.dart';

// Define the SignInScreen class
class SignInScreen extends StatelessWidget {
  final String email;
  final String password;

  const SignInScreen({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: Text('Email: $email\nPassword: $password'),
      ),
    );
  }
}

// Define the SignUpScreen class
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool agreedToTerms = false;
  String selectedRegion = 'Select Region';
  String selectedCountry = 'Select Country';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _showSelectionDialog(String title, List<String> options, ValueChanged<String> onSelect) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView(
          padding: EdgeInsets.all(16.0),
          children: options.map((String option) {
            return ListTile(

              title: Text(option),
              onTap: () {
                onSelect(option);
                Navigator.pop(context);
              },
            );
          }).toList(),
        );
      },
    );
  }

  void _handleSignUp() {
    final email = _emailController.text;
    final password = _passwordController.text;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SignInScreen(
          email: email,
          password: password,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Image.asset(
                    'assets/images/img.png',
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Create an Account',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  ),
                ),
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    _showSelectionDialog(
                      'Region',
                      ['Tp.HCM', 'Vũng Tàu', 'Hà Nội'],
                          (selected) {
                        setState(() {
                          selectedRegion = selected;
                        });
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey[400]!, width: 1.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          '* ',
                          style: TextStyle(color: Colors.red, fontSize: 16.0),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              selectedRegion,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    _showSelectionDialog(
                      'Business Country',
                      ['Châu Á', 'Châu Âu', 'Châu Mĩ'],
                          (selected) {
                        setState(() {
                          selectedCountry = selected;
                        });
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey[400]!, width: 1.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          '* ',
                          style: TextStyle(color: Colors.red, fontSize: 16.0),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              selectedCountry,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: agreedToTerms,
                      onChanged: (bool? value) {
                        setState(() {
                          agreedToTerms = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            agreedToTerms = !agreedToTerms;
                          });
                        },
                        child: Text(
                          'Tôi đã đọc và đồng ý điều khoản và chính sách của chúng tôi',
                          style: TextStyle(fontSize: 12.0, color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: _handleSignUp,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 25.0),
                TextButton(
                  onPressed: () {
                    // Handle Google sign-in
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/img_1.png',
                        height: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.0),
                TextButton(
                  onPressed: () {
                    // Handle GitHub sign-in
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/img_2.png',
                        height: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Continue with GitHub',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}