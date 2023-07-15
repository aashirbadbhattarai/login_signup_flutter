import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const SignUp());
}
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Create an account',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 350),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Your Full Name',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){},
                          validator: (value){
                            return value!.isEmpty ? 'Please enter email' : null;
                          },
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 350),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){},
                          validator: (value){
                            return value!.isEmpty ? 'Please enter email' : null;
                          },
                        ),
                      ),

                      SizedBox(height: 45),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 350),
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){
                          },
                          validator: (value){
                            return value!.isEmpty ? 'Please enter password' : null;
                          },
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 400),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {},
                          child: Text('Create account'),
                          color: Colors.teal,
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 30,),
                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.google),
                            label: Text('  Sign Up with Google'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white, // Button background color
                              foregroundColor: Colors.black,
                            ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.twitter),
                          label: Text('  Sign Up with Twitter'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, // Button background color
                            foregroundColor: Colors.black,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: RichText(
                          text: TextSpan(
                            text: "Already have an account?",
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[

                              TextSpan(

                                text: '  Sign In',
                                style: TextStyle(
                                  color: Colors.teal,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ) ),
            ),
          ],
        ),
      ),
    );
  }
}