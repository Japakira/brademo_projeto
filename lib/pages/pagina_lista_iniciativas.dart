import 'package:flutter/material.dart';
import 'package:tcc01/widgets/cartao_iniciativa.dart';

class PaginaListaIniciativas extends StatefulWidget {
  const PaginaListaIniciativas({super.key});

  @override
  State<PaginaListaIniciativas> createState() => _PaginaListaIniciativas();
}

class _PaginaListaIniciativas extends State<PaginaListaIniciativas> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartaoIniciativa(
              tituloIniciativa: "Projeto piloto",
              descricaoIniciativa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "20/09/2025",
              numeroTarefa: "01|05",
            ),
            CartaoIniciativa(
              tituloIniciativa: "Eleições Consec",
              descricaoIniciativa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "01/10/2025",
              numeroTarefa: "03|10",
            ),
            CartaoIniciativa(
              tituloIniciativa: "ENAP",
              descricaoIniciativa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "31/10/2025",
              numeroTarefa: "04|06",
            ),
            CartaoIniciativa(
              tituloIniciativa: "Vestibular de Verão",
              descricaoIniciativa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "31/10/2025",
              numeroTarefa: "04|06",
            ),
            CartaoIniciativa(
              tituloIniciativa: "IF Meninas",
              descricaoIniciativa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "31/10/2025",
              numeroTarefa: "04|06",
            ),
            CartaoIniciativa(
              tituloIniciativa: "Festa Junina",
              descricaoIniciativa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "31/10/2025",
              numeroTarefa: "04|06",
            ),
            CartaoIniciativa(
              tituloIniciativa: "Projeto de Extensão",
              descricaoIniciativa:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu.",
              dataLimite: "31/10/2025",
              numeroTarefa: "04|06",
            ),
          ],
        ),
      ),
    );
  }
}
