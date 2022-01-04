import 'package:chainvape/bloc/auth_bloc.dart';
import 'package:chainvape/bloc/auth_repository.dart';
import 'package:chainvape/view/auth/splash.dart';
import 'package:chainvape/view/main/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main(){
  final AuthRepository authRepository = AuthRepository();
  runApp(BlocProvider(create: (context)
  {
    return AuthBloc(authRepository: authRepository);
  }, child: App(
    authRepository: authRepository,
    authBloc: AuthBloc(authRepository: authRepository),),));
}

class App extends StatelessWidget {
  final AuthRepository authRepository;
  final AuthBloc authBloc;
  const App({ Key? key, required this.authBloc, required this.authRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chainvape',
      home: BlocBuilder(
        bloc: authBloc,
        builder:(context,AuthState state){
          if(state is AuthInitialize){
           authBloc.add(AuthCheck()); 
           return Container(
             child:  Center(child: CircularProgressIndicator(),),
           ); 
          }
          if(state is AuthHasToken || state is AuthData)return Home();
          if(state is AuthFailed || state is LoginFailed)return Splash(authBloc: authBloc,);
          if(state is AuthLoading){
           return Container(
             color: Colors.white,
             child:  Center(child: CircularProgressIndicator(),),
           ); 
          }
          return Container();
        }
        )
      );
  }
}
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //final wordPair = WordPair.random();
//     return MaterialApp(
//       title: 'Chainvape',
//       home: authBase()
//     );
//   }
// }


  





