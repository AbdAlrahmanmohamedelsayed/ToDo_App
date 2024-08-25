import 'package:flutter/material.dart';
import 'package:todo_app_new/core/page_routes_name.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isobscured = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        decoration: const BoxDecoration(
            color: Color(0xffDFECDB),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.png',
                ),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text(
              'Login',
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * .2,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'Welcome back!',
                      style: theme.textTheme.bodyLarge
                          ?.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        var regex = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        );
                        if (value == null || value.trim().isEmpty) {
                          return 'Palz enter your email address';
                        }
                        if (!regex.hasMatch(value)) {
                          return "invalid email";
                        }
                        return null;
                      },
                      controller: emailController,
                      cursorColor: theme.primaryColor,
                      style: theme.textTheme.bodySmall,
                      decoration: InputDecoration(
                        errorStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                        label: const Text('E-mail'),
                        labelStyle: theme.textTheme.bodySmall?.copyWith(
                          color: theme.primaryColor,
                        ),
                        hintText: 'enter your email address',
                        hintStyle: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.black54,
                          fontSize: 18,
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //     borderSide: BorderSide(
                        //       width: 3,
                        //       color: theme.primaryColor,
                        //     ),
                        //     borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: theme.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        suffix: const Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Palz enter your password ';
                        }

                        return null;
                      },
                      obscureText: isobscured,
                      obscuringCharacter: '*',
                      controller: passwordController,
                      cursorColor: theme.primaryColor,
                      style: theme.textTheme.bodySmall,
                      decoration: InputDecoration(
                        errorStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                        label: const Text('Password'),
                        labelStyle: theme.textTheme.bodySmall?.copyWith(
                          color: theme.primaryColor,
                        ),
                        hintText: 'enter your Password',
                        hintStyle: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.black54,
                          fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: theme.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              isobscured = !isobscured;
                            });
                          },
                          icon: Icon(isobscured
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password?',
                        style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontSize: 17,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  width: 2, color: Colors.white)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          backgroundColor: theme.primaryColor),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, PageRoutesName.layout);
                        // if (formKey.currentState!.validate()) {
                        //   print('validate');
                        // } else {
                        //   print('notvalidate');
                        // }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Login',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 22,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PageRoutesName.signUp);
                      },
                      child: Row(
                        children: [
                          Text('Don’t have an account? ',
                              style: theme.textTheme.bodySmall?.copyWith(
                                  fontSize: 20, color: Colors.black)),
                          Text(
                            ' SignUp',
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
