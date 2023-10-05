import 'package:flutfrogtech_website/screens/profile_screen.dart';
import 'package:flutfrogtech_website/screens/projects_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  final _router = GoRouter(
    initialLocation: '/projects',
    routes: <RouteBase>[
      GoRoute(
        path: '/projects',
        builder: (context, state) => const ProjectsScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'RobotoMono'),
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'FlutFrogTech',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  _router.go('/projects');
                },
                child: const Text('Projects',
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              TextButton(
                onPressed: () {
                  _router.go('/profile');
                },
                child: const Text('Profile',
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
          body: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: _router,
          )),
    );
  }
}
