import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'pokedex.dart';

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'password is required'),
  MinLengthValidator(6, errorText: 'password must be at least 6 digits long'),
  PatternValidator(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$',
      errorText:
          'passwords must have at least one special character, one uppercase letter, one lowercase letter, and one number')
]);

final emailValidator = MultiValidator([
  RequiredValidator(errorText: 'email is required'),
  PatternValidator(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
      errorText: 'email format is invalid')
]);

/*
mixin InputValidationMixin {
  bool isPasswordValid(String password) {
    RegExp regex = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]$');
    return regex.hasMatch(password);
  }

  bool isEmailValid(String email) {
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return regex.hasMatch(email);
  }
}
*/

void main() {
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4
      title: 'Login',
      /*
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 23, 3, 3),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontFamily: 'Pokemon',
          ),
        ),
      ),
      */
      // 5

      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color.fromARGB(255, 0, 0, 0),
          secondary: Color.fromARGB(255, 106, 106, 106),
        ),
        textTheme: theme.textTheme.apply(
          fontFamily:
              'Pokemon', // TODO: how to change title font family and/or use an image/logo?
        ),
        scaffoldBackgroundColor: Colors.black,
      ),

      // 6
      home: const MyLoginPage(title: 'Login'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key, required this.title}) : super(key: key);

  // This widget is the Login page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/title.png'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        validator: emailValidator,
                        autovalidateMode: AutovalidateMode.always,
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 255, 0, 0)),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white),
                          errorStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextFormField(
                        validator: passwordValidator,
                        autovalidateMode: AutovalidateMode.always,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 255, 0, 0)),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                          errorStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                        width: 400,
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue, // Background color
                            onPrimary:
                                Colors.black, // Text Color (Foreground color)
                          ),
                          child: const Text('Login'),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Pokedex(title: 'pokedex')));
                            }
                          },
                        )),
                    Row(
                      children: <Widget>[
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                          child: const Text(
                            'Create an account',
                            style: TextStyle(fontSize: 14, color: Colors.red),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ))));
  }
}
