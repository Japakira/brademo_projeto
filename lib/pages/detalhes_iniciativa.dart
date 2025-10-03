import 'package:flutter/material.dart';
import 'package:tcc01/widgets/avatar_circulo.dart';

class PaginaDetalheIniciativa extends StatefulWidget {
  final dynamic nomeIniciativa;
  final dynamic descricaoIniciativa;

  const PaginaDetalheIniciativa({
    super.key,
    this.nomeIniciativa,
    this.descricaoIniciativa,
  });

  @override
  State<PaginaDetalheIniciativa> createState() => _MyPaginaDetalheIniciativa();
}

class _MyPaginaDetalheIniciativa extends State<PaginaDetalheIniciativa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        title: Text(
          widget.nomeIniciativa,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFF7F3F0),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Column(
              children: [
                Text(widget.descricaoIniciativa),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Coordenadores',
                          style: TextStyle(color: Color(0xFF253334)),
                        ),
                        AvatarCirculo(
                          pathImagem: 'assets/images/userAvatar.jpg',
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Quantidade de Tarefas',
                          style: TextStyle(color: Color(0xFF253334)),
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                            color: Color(0xFF253334),
                            fontFamily: "Alegreya",
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
