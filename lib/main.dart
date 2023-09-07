import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:typeracer_tut/provider/client_state_provider.dart';
import 'package:typeracer_tut/provider/game_state_provider.dart';
import 'package:typeracer_tut/screens/create_room_screen.dart';
import 'package:typeracer_tut/screens/game_screen.dart';
import 'package:typeracer_tut/screens/home_screen.dart';
import 'package:typeracer_tut/screens/join_room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GameStateProvider()),
        ChangeNotifierProvider(create: (context) => ClientStateProvider()),
      ],
      child: MaterialApp(
        title: 'TypeRacer App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/create-room': (context) => const CreateRoomScreen(),
          '/join-room': (context) => const JoinRoomScreen(),
          '/game-screen': (context) => const GameScreen(),
        },
      ),
    );
  }
}

