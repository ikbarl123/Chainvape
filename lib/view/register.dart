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
              child: Container(
                  key: _formKey,
                  decoration: BuildBG(),
                  child: Stack(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 52,
                          ),
                          Image.asset(
                            'assets/images/Chainvapelogos_transparent21.png',
                            height: 69,
                            width: 302,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          buildTitle("Register"),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: buildText("Nama")),
                                Center(
                                  child: Container(
                                    width: 343,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Material(
                                      type: MaterialType.transparency,
                                      child: TextFormField(
                                        // to trigger disabledBorder
                                        style: TextStyle(color: Colors.black),
                                        decoration: buildTextfield(""),
                                        controller: _namaController,
                                        //onChanged: _authenticationFormBloc.onPasswordChanged,
                                        obscureText: false,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: buildText("Email")),
                                Center(
                                  child: Container(
                                    width: 343,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Material(
                                      type: MaterialType.transparency,
                                      child: TextFormField(
                                        // to trigger disabledBorder
                                        style: TextStyle(color: Colors.black),
                                        decoration: buildTextfield(""),
                                        controller: _emailController,
                                        //onChanged: _authenticationFormBloc.onPasswordChanged,
                                        obscureText: false,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: buildText("Password")),
                                Center(
                                  child: Container(
                                    width: 343,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Material(
                                      type: MaterialType.transparency,
                                      child: TextFormField(
                                        // to trigger disabledBorder
                                        style: TextStyle(color: Colors.black),
                                        decoration: buildTextfield(""),
                                        controller: _passwordController,
                                        //onChanged: _authenticationFormBloc.onPasswordChanged,
                                        obscureText: true,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: buildText("Confirm Password")),
                                Center(
                                  child: Container(
                                    width: 343,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Material(
                                      type: MaterialType.transparency,
                                      child: TextFormField(
                                        // to trigger disabledBorder
                                        style: TextStyle(color: Colors.black),
                                        decoration: buildTextfield(""),
                                        controller: _passwordconfController,
                                        //onChanged: _authenticationFormBloc.onPasswordChanged,
                                        obscureText: true,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
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
                                        onPressed: _register,
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
