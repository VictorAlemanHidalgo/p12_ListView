import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GroupedListViewExample(),
    );
  }
}

class GroupedListViewExample extends StatelessWidget {
  final Map<String, List<String>> teams = {
    'Team A': ['John', 'Beth'],
    'Team B': ['Will', 'Miranda'],
    'Team C': ['Mike', 'Danny'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView-Victor Aleman 1123"),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: const Color(0xff0f844d),
      ),
      body: ListView(
        children: teams.entries.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Título centrado
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Center(
                  child: Text(
                    entry.key,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Lista de nombres con diseño mejorado
              ...entry.value.map((name) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15), // Aumenta la altura
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.account_circle_sharp,
                            color: Colors.black54), // Ícono dentro de círculo
                      ),
                      title: Text(
                        name,
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.arrow_forward,
                          color: Colors.black54), // Flecha real
                    ),
                  )),
            ],
          );
        }).toList(),
      ),
    );
  }
}
