import 'package:tcc01/models/modelo_usuario.dart';

class Tarefa {
  var tarefaId = 0;
  String tarefaNome = "";
  String tarefaDescricao = "";
  List<Usuario> responsaveis = List.empty();
  DateTime prazo = DateTime.now();
  bool finalizado = false;
}
