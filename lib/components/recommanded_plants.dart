import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';


class RecommandedPlants extends StatelessWidget {
  const RecommandedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
                child: Row(
        children:<Widget> [
          RecommandedPlantCard(
           image: "assets/images/plant01.jpg",
           title: "Sandeepa",
           country: "Srilankan",
           price: 100,
           press: (){
            // Navigator.push(
            //   context, 
            //   MaterialPageRoute(
            //     builder: (context) => DetailsScreen(),
            //   ),
            //   );
           },
          ),

          RecommandedPlantCard(
           image: "assets/images/plant01.jpg",
           title: "Charith",
           country: "Indian",
           price: 100,
           press: (){
             
           },
          ),

          RecommandedPlantCard(
           image: "assets/images/plant01.jpg",
           title: "Gihan",
           country: "japanese",
           price: 100,
           press: (){
             
           },
          ),

          RecommandedPlantCard(
           image: "assets/images/plant01.jpg",
           title: "Sandeepa",
           country: "Japan",
           price: 100,
           press: (){
            
           },
          ),
        ],
      ),
    );
  }
}

class RecommandedPlantCard extends StatelessWidget {
  const RecommandedPlantCard({
    Key? key,
    required this.image, 
    required this.title, 
    required this.country,
    required this.price,
    required this.press,
   
  }) : super(key: key);

  final String image,title,country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return Container(
      //gives 40% of total height
     width: size.width * 0.4,
     margin: EdgeInsets.only(
       left:KdefaultPadding,
       top:KdefaultPadding / 2,
       bottom: KdefaultPadding *2.5,
     ),

     child: Column(
       children: <Widget>[
         Image.asset(image),
         GestureDetector(
           onTap: press(),
             child: Container(
             
             padding: EdgeInsets.all(KdefaultPadding / 2 ),
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(10),
                 bottomRight: Radius.circular(10),
               ),
               boxShadow: [
                BoxShadow(
                offset: Offset(0,10),
                blurRadius: 50,
                color: KprimaryColour.withOpacity(0.23),
               )
               ],
             ),
             child: Row(
               children: <Widget>[
                 RichText(
                   text: TextSpan(
                   children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    
                    ),
                    TextSpan(

                      text: "$country".toUpperCase(),
                      style: TextStyle(
                        color: KprimaryColour.withOpacity(0.5)
                      )
                    ),

                   ],

                 ),
                 ),

                 Spacer(),

                 Text("\$$price",style: Theme.of(context)
                 .textTheme
                 .button!
                 .copyWith(color: KprimaryColour),)
               ],
             ),
           ),
         ),
       ],
     ),

    );
  }
}
