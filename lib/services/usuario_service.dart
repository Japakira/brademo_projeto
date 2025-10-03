import 'package:tcc01/models/modelo_usuario.dart';
import 'package:tcc01/services/load_firebase_service.dart';

const collectionName = "usuario";

class UsuarioService {
  static Future<List<Usuario>> getAllUsuarios() async {
    final database = getFirestoreConnection();
    List<Usuario> resultUsuarios = List.empty(growable: true);
    await database.collection(collectionName).get().then((event) {
      for (var doc in event.docs) {
        var json = doc.data();
        resultUsuarios.add(
          Usuario(
            id: doc.id,
            usuarioNome: json['Nome'],
            usuarioEmail: json['E-mail'],
            usuarioPassword: json['Password'],
            usuarioPerfil: json['Perfil'],
            usuarioTarefas: json['Tarefas'],
            usuarioPathImagem: json['Foto'],
          ),
        );
      }
    });

    return resultUsuarios;
  }
}
