import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/models/plants_list.dart';
import 'package:training_app_clean/app/pages/favorite/components/favorite_grid_card.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<PlantList>(
        builder: (BuildContext context, PlantList plantList, Widget? child) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
            ),
            padding: const EdgeInsets.only(
                right: 8), // Adapitado o jeito do padding, PT 1
            itemCount: plantList.favoritePlants().length,
            itemBuilder: (context, index) {
              return  FavoriteGridCard(
                plantList: plantList,
                index: index,
              );
            },
          );
        },
      ),
    );
  }
}



// escolher o nicho do produto
// procurar e analisar os concorrentes
// pensar na promessa do vsl
// analisar se consegue comprir com a promessa
// pesquisar sobre o publico
// escrever o plr
// mandar para o locutor
// editar e video
// criar pagina de vendas
// subir o video na pagina de vendas

// recapitular as promessas do vsl
// procurar por ebooks plr para comprar, google "plr course 'nicho escolhido'"
// traduzir o plr
// diagramar o ebook no canva, colocar a capa, sumario e o conteudo do plr
// colocar aviso de reembolso
// finalizar o ebook

// criar uma conta na kiwify
// cadastrar o produto na plataforma
// configurar o checkout
// subir o link na pagina de vendas
// finalizar as configuracoes

// conferir se existe algum problema na mensagem de vendas
// comprar o produto e ver se chega no seu email
// mensagem de venda e o que faz vender
// 



// bryan moron, 22 steps for you to write your vsl in 5 min to sell millions
// Open sans font, size 42
// atomicat.com.br
