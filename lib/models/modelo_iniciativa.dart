import 'package:tcc01/models/modelo_usuario.dart';
import 'package:tcc01/models/modelo_tarefa.dart';

class Iniciativa {
  var id = 0;
  String iniciativaNome = "";
  String iniciativaDescricao = "";
  List<Tarefa> tarefas = List.empty();
  List<Usuario> coordenadores = List.empty();
  DateTime prazo = DateTime.now();
  bool finalizado = false;
}
