import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../router/router.dart';
import '../../../presentations/presentations.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController usernameController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
  late final AuthCubit cubit = context.read();
  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          previous.isAuthenticated != current.isAuthenticated,
      listener: (context, state) {
        if (state.isAuthenticated) {
          Future.microtask(() => router.maybePop(true));
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: FlutterLogo(
                            size: 100,
                            style: FlutterLogoStyle.markOnly,
                            textColor: const Color(0xff6136e3),
                          )),
                      Form(
                        // key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: TextFormField(
                                controller: usernameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Field tidak boleh kosong';
                                  }
                                  return null;
                                },
                                // controller: controller.credentialController,
                                decoration: InputDecoration(
                                  errorStyle:
                                      const TextStyle(color: Colors.red),
                                  hintText: 'Email / Username / No Telepon',
                                  prefixIcon: const Icon(Icons.person,
                                      color: Color.fromRGBO(97, 54, 227, 1)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: TextFormField(
                                controller: passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password harus diisi';
                                  }
                                  return null;
                                },
                                // controller: controller.passwordController,
                                // obscureText: _obscureText,
                                decoration: InputDecoration(
                                  errorStyle:
                                      const TextStyle(color: Colors.red),
                                  hintText: 'Password',
                                  prefixIcon: IconButton(
                                      icon: const Icon(
                                        // _obscureText
                                        //     ? Icons.visibility_off
                                        //     : Icons.visibility,
                                        Icons.visibility_off,
                                        color: Color(0xff6136e3),
                                      ),
                                      onPressed: () {}
                                      // _togglePasswordVisibility,
                                      ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                    // router.push(const ForgotPasswordRoute());
                                  },
                                  child: const Text(
                                    'Lupa Kata Sandi ?',
                                    style: TextStyle(color: Color(0xff6136e3)),
                                  )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  cubit.login(
                                    usernameController.text.trim(),
                                    passwordController.text,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff6136e3)),
                                child: const Text(
                                  'Masuk',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
                child: Align(
              alignment: Alignment.topRight,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    router.maybePop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
