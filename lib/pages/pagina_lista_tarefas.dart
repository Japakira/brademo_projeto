import 'package:flutter/material.dart';
import 'package:tcc01/pages/detalhes_iniciativa.dart';
import 'package:tcc01/pages/nova_tarefa.dart';
import 'package:tcc01/widgets/cartao_tarefa.dart';

class PaginaListaTarefas extends StatefulWidget {
  final dynamic tituloIniciativa;
  final dynamic descricaoIniciativa;

  const PaginaListaTarefas({
    super.key,
    this.tituloIniciativa,
    this.descricaoIniciativa,
  });

  @override
  State<PaginaListaTarefas> createState() => _PaginaListaTarefas();
}

class _PaginaListaTarefas extends State<PaginaListaTarefas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        actionsPadding: EdgeInsets.symmetric(horizontal: 15),
        backgroundColor: Color(0xFF253334),
        title: Text(
          widget.tituloIniciativa,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PaginaDetalheIniciativa(
                  nomeIniciativa: widget.tituloIniciativa,
                  descricaoIniciativa: widget.descricaoIniciativa,
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(30),
            child: Padding(
              padding: EdgeInsetsGeometry.zero,
              child: Ink(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Center(
                  child: Text(
                    "i",
                    style: TextStyle(
                      fontFamily: "Alegreya",
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CartaoTarefa(
              tituloTarefa: "Emissão de edital",
              descricaoTarefa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "20/09/2025",
              numeroTarefa: "01",
            ),
            CartaoTarefa(
              tituloTarefa: "Composição da comissão",
              descricaoTarefa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "01/10/2025",
              numeroTarefa: "02",
            ),
            CartaoTarefa(
              tituloTarefa: "Organização do espaço",
              descricaoTarefa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "31/10/2025",
              numeroTarefa: "03",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF7C9A92),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NovaTarefa()),
          );
        },
        label: Text(
          "Nova Tarefa",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Alegreya",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
