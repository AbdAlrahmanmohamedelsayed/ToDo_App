import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isobscured = false;
  TextEditingController personController = TextEditingController();
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
              'Create Account',
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
                      height: MediaQuery.sizeOf(context).height * .3,
                    ),
                    //user name
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Palz enter your email address';
                        }
                        return null;
                      },
                      controller: personController,
                      cursorColor: theme.primaryColor,
                      style: theme.textTheme.bodySmall,
                      decoration: InputDecoration(
                        errorStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                        label: const Text('UserName'),
                        labelStyle: theme.textTheme.bodySmall?.copyWith(
                          color: theme.primaryColor,
                        ),
                        hintText: 'enter your Full Name',
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
                        suffix: const Icon(Icons.person),
                      ),
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
                    //password
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
                            fontSize: 20,
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
                    const SizedBox(
                      height: 10,
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
                        if (formKey.currentState!.validate()) {
                          print('validate');
                        } else {
                          print('notvalidate');
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Create Account',
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
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
