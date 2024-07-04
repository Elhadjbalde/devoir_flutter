import 'package:flutter/material.dart';
import '../Profil_fb/widget/widget.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    double heuteur = MediaQuery.of(context).size.height / 7;
    double largeur = MediaQuery.of(context).size.width / 3;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          //Debut de la colonne pour structurer l'application
          child: Column(
            children: [
              Stack(
                children: [
                  //Container pour la photo de couverture
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/4.5,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage('assets/1.jpg'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  //Un padding pour la photo de profil
                  Padding(
                    padding: EdgeInsets.only(top:heuteur,left:largeur),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(70)),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/3.jpg'),
                          radius:60,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Un text pour le nom du compte
              const Text('Boubacar Balde',
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10,),
              //Text pour la Biographie
              const Text('Un jour je marierai binta, mais pas aujourdui, c\'est l\'heure des etudes d\'abord',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 107, 107),
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 10,),//Espacement de 10px de hauteur
              //Debut de la ligne pour le bouton modifier et editer
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Container pour boutton modifier
                  InkWell(
                    child: Container(
                      width: 300,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: const Center(
                        child: Text('Modifier le profil',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        alert(context);
                      });
                    },
                  ),
                  //Container pour le boutton editer
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(17)
                    ),
                    child: const Center(
                        child: Icon(Icons.edit_note_rounded, color: Colors.white,size: 25,)
                    ),
                  ),
                ],
              ),//Fin de la ligne
              const SizedBox(height: 10,),
              barr(top: 5),//barr est une fonction qui permet de tracer une ligne droit
              padding_text_simple(top:10, text:' A propos de moi'),//padding_text_simple est une fonction qui permet de placer un text a une position donnee
              padding_icon_text(icon: Icons.home, top: 5, text: ' sonfonia, Conakry'),//padding_icon_text est une fonction qui permet de placer un icon et un text a une position donnee
              padding_icon_text(icon: Icons.travel_explore, top: 5, text: ' Developpeur Flutter'),
              padding_icon_text(icon: Icons.favorite, top: 5, text: ' En couple avec Binta'),
              barr(top: 10),
              padding_text_simple(top: 10, text: ' Amis'),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      widget_amis(image: 'assets/1.jpg', nom: 'kindy'),
                      widget_amis(image: 'assets/2.jpg', nom: 'Binta'),
                      widget_amis(image: 'assets/3.jpg', nom: 'Kandiatou'),
                      widget_amis(image: 'assets/4.jpg', nom: 'Abdourahame'),
                      widget_amis(image: 'assets/5.jpg', nom: 'Mamadou'),
                    ],
                  ),
                ),
              ),
              barr(top: 10),
              padding_text_simple(top: 5, text: 'Mes Posts'),
              card_post( //card_post est une fonction qui permet de dessiner un card qui a des widgets et des texts a l'interieur
                  context: context,
                  top: 10,
                  profil: 'assets/3.jpg',
                  imgFont: 'assets/4.jpg',
                  nom: '  Boubacar Balde',
                  text: 'Il y\'a 5 minutes',
                  textPublic: 'Petit tour au Magic World, on s\'est bien amuser et en plus il n\'y avait pas grand monde Breff, je kiff',
                  like: 150,
                  comment: 20
              ),
              card_post(
                  context: context,
                  top: 5,
                  profil: 'assets/3.jpg',
                  imgFont: 'assets/2.jpg',
                  nom: '  Boubacar Balde',
                  text: 'Il y\'a 20 minutes',
                  textPublic: 'La montagne ca vous gagne',
                  like: 200,
                  comment: 150
              ),
              card_post(
                  context: context,
                  top: 5,
                  profil: 'assets/3.jpg',
                  imgFont: 'assets/5.jpg',
                  nom: '  Boubacar Balde',
                  text: 'Il y\'a 45 minutes',
                  textPublic: 'Retour au boulot apres plusieurs moi de confinement',
                  like: 400,
                  comment: 200
              )
            ],
          ),//Fin de la colonne
        )
    );
  }
}
