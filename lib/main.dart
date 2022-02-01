import 'package:chainvape/bloc/auth_bloc.dart';
import 'package:chainvape/bloc/forum_bloc.dart';
import 'package:chainvape/bloc/vapestore_bloc.dart';
import 'package:chainvape/service/service.dart';
import 'package:chainvape/view/tabs/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chainvape/view/view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MultiRepositoryProvider(
          providers: [
            RepositoryProvider(create: (context) => StoreService()),
            RepositoryProvider(create: (context) => AuthService()),
            RepositoryProvider(create: (context) => ThreadService()),
          ],
          child: MultiBlocProvider(providers: [
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(AuthService()),
            ),
            BlocProvider<VapestoreBloc>(
              create: (context) => VapestoreBloc(StoreService()),
            ),
            
          ], child: MaterialApp(
            title: 'Chainvape',
            home: App(),))
          );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
            return BlocListener<AuthBloc, AuthState>(
              bloc: context.read<AuthBloc>(),
              listener: (context, state) {
                if(state is AuthHasData){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainLayout()));
                      } 
                if(state is AuthFailed){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Splash()));
                } 
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          print(state);
          if (state is AuthInit) {
            context.read<AuthBloc>().add(AppCheck());
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            );
          }
          if (state is AuthHasData) {
            return MainLayout();
          }
          if (state is AuthLoading) {
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
