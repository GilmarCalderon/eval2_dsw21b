import 'package:eval2_dsw21b/views/edit_categorias.dart';
import 'package:eval2_dsw21b/views/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'views/add_categorias.dart';
import 'views/about_us.dart';
void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp().then((_) {
runApp(const MyApp());
});
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override