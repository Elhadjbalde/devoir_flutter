import 'package:flutter/material.dart';



Widget widget_amis({required String image, required String nom}){
  return Padding(
    padding: const EdgeInsets.only(left: 17),
    child: Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('$image'),
                  fit: BoxFit.fill
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black87,
                    blurRadius: 5.0,
                    offset: Offset(1.0, 2.0)
                )
              ]
          ),
        ),
        Text('$nom',style: const TextStyle(color: Colors.black,fontSize: 15),),
      ],
    ),
  );
}

//Fonction Padding Text
Widget padding_text_simple({required double top, required String text,}){
  return Padding(
    padding: EdgeInsets.only(top: top),
    child: Row(
      children: [
        Text('$text',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
      ],
    ),
  );
}

//Fonction Padding Icon text
Widget padding_icon_text({required IconData icon, required double top, required String text}){
  return Padding(
    padding: EdgeInsets.only(top: top),
    child: Row(
      children: [
        Icon(icon),
        Text('$text',style: const TextStyle(color: Colors.black,fontSize: 13),),
      ],
    ),
  );
}

//Fonction barr
Widget barr({required double top}){
  return Padding(
    padding: EdgeInsets.only(top:top),
    child: Container(
      width: double.infinity,
      height: 1,
      color: const Color.fromARGB(255, 113, 107, 107),
    ),
  );
}

//Fonction pour les Card Posts
Widget card_post(
    {
      required BuildContext context,
      required double top,
      required String profil,
      required String imgFont,
      required String nom,
      required String text,
      required String textPublic,
      required int like,
      required int comment
    }
    ){
  return Padding(
    padding: EdgeInsets.only(top: top),
    child: Card(
      color: Color.fromARGB(255, 216, 214, 214),
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height / 1.9,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage('$profil'),
                        radius: 22,
                      ),
                      Text('$nom'),
                    ],
                  ),
                  Text('$text',style: const TextStyle(color: Colors.blue,fontSize: 13),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('$imgFont'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$textPublic',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue,fontSize: 12),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: barr(top: 5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.favorite,size: 24.0,),
                  Text('$like Likes',style: const TextStyle(color: Colors.black,fontSize: 13),),
                  const Icon(Icons.comment,size: 24.0,),
                  Text('$comment Commantaires',style: const TextStyle(color: Colors.black,fontSize: 13),),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

//Fonction alert
void alert(BuildContext context) {
  final test = SnackBar(
    backgroundColor: const Color.fromARGB(255, 65, 80, 4),
    content: const Text(
      'Modification Impossible',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
    ),
    action: SnackBarAction(
      onPressed: () {},
      label: 'Ok',
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(test);
}
