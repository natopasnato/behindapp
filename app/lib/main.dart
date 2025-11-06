import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Supabase.initialize(
    url: 'https://eeebswpwdksumptowcpr.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVlZWJzd3B3ZGtzdW1wdG93Y3ByIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjA4ODMzNzMsImV4cCI6MjA3NjQ1OTM3M30.siN_fQEEm3-JaX8JDvY51eIPZcjjGxUfq_Gq6__Jk7w',
  );
  
  runApp(const BehindApp());
}

