import 'package:flutter/material.dart';
class AdvertisementBanner extends StatelessWidget {
  const AdvertisementBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        
        margin: EdgeInsets.all(5),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF07D322).withOpacity(0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 5,),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Expanded(
                       flex: 1,
                       child: IconButton(
                         color: Colors.white,
                          
                         icon: Icon(
                           Icons.arrow_back_ios_new_sharp,
                           size: 30,
                           ),
                          onPressed: () {  },
                     
                         ),
                     ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          width: 200,
                          height: 150,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/AdvetisementBackground.jpg'),
                           fit: BoxFit.fill,
                                ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent,
                          ),
                          child: Text.rich(
                          TextSpan(
                            text: "Advertisement01\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 24
                            ),
                            children: [
                              TextSpan(
                                text: "Subline 1",
                                style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                      
                              )
                            ],
                          )
                        ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: IconButton(
                         color: Colors.white, 
                         icon: Icon(
                           Icons.arrow_forward_ios_sharp,
                           size: 30,
                           ),
                          onPressed: () {  },
                      
                         ),
                      ),
                     

                   ],
                 ),
               )
             ],
        ),
      ),
    );
  }
}
