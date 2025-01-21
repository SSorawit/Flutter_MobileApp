import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  
  @override
  State<LoginPage> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> { 
  final _formKey = GlobalKey<FormState>(); 
  final _navigatorKey = GlobalKey<NavigatorState>(); 
  final _usernameController = TextEditingController(); 
  final _passwordController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey, 
      onGenerateInitialRoutes: (navigator, initialRoute) { 
        return [
          MaterialPageRoute(
            builder: (context) => Scaffold( 
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form( 
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Image.network(
                          'https://www.rmutt.ac.th/wp-content/uploads/2023/01/20210202-logo-RMUTT-News-1024x341.png',
                          width: 400,
                          height: 150,
                        ),
                        TextFormField(
                          controller: _usernameController,
                          decoration: 
                            const InputDecoration(labelText: 'Username'),
                          validator: (value) {
                            if (value == null || value.isEmpty) { 
                                return 'Please enter your Username';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: 
                            const InputDecoration(labelText: 'Password'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Password';
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 24,),

                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) { 
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Login Successful')),
                              );
                            }
                          }, 
                          child: const Text('Login'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ];
      },
    );
  }
}
