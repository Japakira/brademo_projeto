import 'package:flutter/material.dart';
import 'package:tcc01/pages/detalhes_tarefa.dart';

class CartaoTarefa extends StatefulWidget {
  final dynamic tituloTarefa;
  final dynamic descricaoTarefa;
  final dynamic dataLimite;
  final dynamic numeroTarefa;

  const CartaoTarefa({
    super.key,
    this.tituloTarefa,
    this.descricaoTarefa,
    this.dataLimite,
    this.numeroTarefa,
  });

  @override
  State<CartaoTarefa> createState() => _CartaoTarefaState();
}

class _CartaoTarefaState extends State<CartaoTarefa> {
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
                  builder: (context) => PaginaDetalheTarefa(
                    nomeTarefa: widget.tituloTarefa,
                    descricaoTarefa: widget.descricaoTarefa,
                  ),
                ),
              );
            },
            child: Text(
              widget.tituloTarefa,
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
              widget.descricaoTarefa,
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
