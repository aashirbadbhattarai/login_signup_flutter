import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const HomePage());
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome',
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
                        padding: const EdgeInsets.symmetric(horizontal: 90),
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
                        padding: const EdgeInsets.symmetric(horizontal: 90),
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
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {},
                          child: Text('Sign In'),
                          color: Colors.teal,
                          textColor: Colors.white,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account?",
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[

                              TextSpan(

                                text: '  Sign Up',
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
