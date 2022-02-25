part of 'view.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _namaController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordconfController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    void _register() {
      authBloc.add(RegisterProcess(
          nama: _namaController.text,
          email: _emailController.text,
          password: _passwordController.text,
          password_confirmation: _passwordconfController.text));
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
                          buildTitle("Register"),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Column(
                              children: [
                                // Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: buildText("Nama")),
                                Center(
                                  child: TextFormField(
                                    // to trigger disabledBorder
                                    style: TextStyle(color: Colors.black),
                                    decoration: buildTextfield("Nama"),
                                    controller: _namaController,
                                    //onChanged: _authenticationFormBloc.onPasswordChanged,
                                    obscureText: false,
                                    validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Silahkan Masukkan Nama';
                                    }
                                    return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: buildText("Email")),
                                Center(
                                  child: TextFormField(
                                    // to trigger disabledBorder
                                    style: TextStyle(color: Colors.black),
                                    decoration: buildTextfield("Email"),
                                    controller: _emailController,
                                    //onChanged: _authenticationFormBloc.onPasswordChanged,
                                    obscureText: false,
                                    validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Silahkan Masukkan Email';
                                    } if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                          return "Silahkan masukkan Email";
                                        }
                                    return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: buildText("Password")),
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
                                    } if (value.length < 8) {
                                      return 'Password minimal 8 karakter';
                                    }
                                    return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: buildText("Confirm Password")),
                                Center(
                                  child: TextFormField(
                                    // to trigger disabledBorder
                                    style: TextStyle(color: Colors.black),
                                    decoration: buildTextfield("Konfirmasi Password"),
                                    controller: _passwordconfController,
                                    //onChanged: _authenticationFormBloc.onPasswordChanged,
                                    obscureText: true,
                                    validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Silahkan Masukkan Password';
                                    } else if (value != _passwordController.text) {
                                      return 'Password Tidak Sama';
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
                                              _register();
                                            }
                                          },
                                        child: (state is AuthLoading)
                                            ? CircularProgressIndicator()
                                            : Text(
                                                'Register',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(30, 81, 40, 1),
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
                  ])),
            );
          },
        ),
      ),
    );
  }
}
