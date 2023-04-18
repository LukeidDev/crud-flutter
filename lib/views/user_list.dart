import 'package:crud_flutter/components/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/users.dart';

import '../models/user.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuarios'),
        actions: [
          IconButton(
            onPressed: () {
              users.put(User(
                id: '6',
                name: 'Teste',
                email: 'aluno@cod3r.com.br',
                avatarUrl: '',
              ));
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: users.count,
          itemBuilder: ((context, index) => UserTile(users.byIndex(index)))),
    );
  }
}
