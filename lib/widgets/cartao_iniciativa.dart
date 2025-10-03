import 'package:flutter/material.dart';
import 'package:tcc01/pages/pagina_lista_tarefas.dart';

class CartaoIniciativa extends StatefulWidget {
  final dynamic tituloIniciativa;
  final dynamic descricaoIniciativa;
  final dynamic dataLimite;
  final dynamic numeroTarefa;

  const CartaoIniciativa({
    super.key,
    this.tituloIniciativa,
    this.descricaoIniciativa,
    this.dataLimite,
    this.numeroTarefa,
  });

  @override
  State<CartaoIniciativa> createState() => _CartaoIniciativaState();
}

class _CartaoIniciativaState extends State<CartaoIniciativa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF7F3F0),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      height: 140,
      width: double.infinity,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaginaListaTarefas(
                    tituloIniciativa: widget.tituloIniciativa,
                    descricaoIniciativa: widget.descricaoIniciativa,
                  ),
                ),
              );
            },
            child: Text(
              widget.tituloIniciativa,
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFF253334),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xFFF7F3F0),
            ),
            child: Text(
              widget.descricaoIniciativa,
              maxLines: 2,
              style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(widget.dataLimite), Text(widget.numeroTarefa)],
          ),
        ],
      ),
    );
  }
}
