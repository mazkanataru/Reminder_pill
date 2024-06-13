import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _nameController.text = prefs.getString('name') ?? '';
      _ageController.text = prefs.getString('age') ?? '';
      _genderController.text = prefs.getString('gender') ?? '';
    });
  }

  _saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _nameController.text);
    await prefs.setString('age', _ageController.text);
    await prefs.setString('gender', _genderController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль пользователя'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Имя'),
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Возраст'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _genderController,
              decoration: InputDecoration(labelText: 'Пол'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _saveUserData();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Данные сохранены!'),
                  ),
                );
              },
              child: Text('Сохранить'),
            ),
          ],
        ),
      ),
    );
  }
}
