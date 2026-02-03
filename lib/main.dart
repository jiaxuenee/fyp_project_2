import 'package:flutter/material.dart';
import 'package:fyp_project_2/screens/home_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ivmmxdmqzkzkkencnhue.supabase.co', // Replace with your URL
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml2bW14ZG1xemt6a2tlbmNuaHVlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjkwNjA0MDUsImV4cCI6MjA4NDYzNjQwNX0.6F4KIGwuj18q0NROOI2y4BgG0USLu8s_-0HbE5ykZzg', // Replace with your Anon Key
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitchen Buddy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        scaffoldBackgroundColor: const Color(0xFFFFF3CC),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
