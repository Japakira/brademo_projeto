import 'package:tcc01/models/modelo_perfil.dart';
import 'package:tcc01/models/modelo_tarefa.dart';

class Usuario {
  Usuario({
    required this.id,
    required this.usuarioNome,
    required this.usuarioEmail,
    required this.usuarioPassword,
    required this.usuarioPerfil,
    required this.usuarioTarefas,
    required this.usuarioPathImagem,
  });

  String id = "";
  String usuarioNome = "";
  String usuarioEmail = "";
  String usuarioPassword = "";
  List<Tarefa> usuarioTarefas = List.empty();
  List<Perfil> usuarioPerfil = List.empty();
  String usuarioPathImagem = "";
}
