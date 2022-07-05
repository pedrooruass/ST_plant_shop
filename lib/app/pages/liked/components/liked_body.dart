import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/models/liked.dart';

class LikedBody extends StatelessWidget {
  const LikedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Liked liked = Provider.of<Liked>(context);
    return Scaffold(
      body: Consumer<Liked>(
        builder: (BuildContext context, Liked value, Widget? child) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
            ),
            padding: const EdgeInsets.only(right: 8), // Adapitado o jeito do padding, PT 1
            itemCount: liked.likedList.length,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only( 
                  left: 8,
                  bottom: 8,
                  top: 8,
                ), // PT 2 kakakakka
                color: primaryColor,
                child: Text(
                  liked.likedList[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
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
