part of 'view.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = new TextEditingController();

  TextEditingController _passwordController = new TextEditingController();
   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    void _login() {
      authBloc.add(LoginProcess(
          email: _usernameController.text, password: _passwordController.text));
    }

    return Scaffold(
      resizeToAvoidBottomInset: false, 
      body: BlocListener<AuthBloc, AuthState>(
        bloc: authBloc,
        listener: (context, state) {
           if (state is LoginFailed) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                duration: Duration(seconds: 5),
                backgroundColor: Colors.red,
                content: Text(state.error),
              ),
            );
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          bloc: authBloc,
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: Container(
                  decoration: BuildBG(),
                  child: Center(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.white),
                        ),
                      ),  

                      
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                  
                            SizedBox(
                              height: 50,
                            ),
                            buildTitle("Login"),
                            Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: Column(
                                children: [
                                  // Align(
                                  //     alignment: Alignment.centerLeft,
                                  //     child: buildText("Email")),
                                  //     SizedBox(
                                  //   height: 5,
                                  // ),
                                  Center(
                                    child: TextFormField(
                                      // to trigger disabledBorder
                                      style: TextStyle(color: Colors.black),
                                      decoration: buildTextfield("Email"),
                                      controller: _usernameController,
                                      //onChanged: _authenticationFormBloc.onPasswordChanged,
                                      obscureText: false,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Silahkan Masukkan Email';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // Align(
                                  //     alignment: Alignment.centerLeft,
                                  //     child: buildText("Password")),
                                  //     SizedBox(
                                  //   height: 5,
                                  // ),
                                  Center(
                                    child: TextFormField(
                                      // to trigger disabledBorder
                                      style: TextStyle(color: Colors.black),
                                      decoration: buildTextfield("Password"),
                                      controller: _passwordController,
                                      //onChanged: _authenticationFormBloc.onPasswordChanged,
                                      obscureText: true,
                                      validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Silahkan Masukkan Password';
                                    }
                                    return null;
                                    },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: 142,
                                        height: 52,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: ElevatedButton(
                                          onPressed: (){
                                            if (_formKey.currentState!.validate()) {
                                              _login();
                                            }
                                          },
                                          child: (state is AuthLoading)
                                              ? CircularProgressIndicator()
                                              : Text(
                                                  'Login',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromRGBO(30, 81, 40, 1),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22)),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ]),
                  )),
            );
          },
        ),
      ),
    );
  }
}
