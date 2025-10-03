import 'package:flutter/material.dart';
import 'package:tcc01/widgets/cria_grid_avatar.dart';
// import 'package:tcc01/widgets/cria_grid_avatar.dart';

class PaginaDetalheTarefa extends StatefulWidget {
  final dynamic nomeTarefa;
  final dynamic descricaoTarefa;

  const PaginaDetalheTarefa({super.key, this.nomeTarefa, this.descricaoTarefa});

  @override
  State<PaginaDetalheTarefa> createState() => _MyPaginaDetalheTarefa();
}

class _MyPaginaDetalheTarefa extends State<PaginaDetalheTarefa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        title: Text(
          widget.nomeTarefa,
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
            height: 140,
            width: double.infinity,
            child: Text(widget.descricaoTarefa),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => CriaGridAvatar())),
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF7C9A92),
              ),
              child: Text(
                "Responsáveis",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Alegreya",
                  fontWeight: FontWeight.normal,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
