import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp2021/constrants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: KdefaultPadding * 2.5),
      //this provide 20% of total height
      height: size.height * 0.2,

      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: KdefaultPadding,
              right: KdefaultPadding,
              bottom: 36 + KdefaultPadding,
            ),
            height: size.height * 0.3-20,
          decoration: BoxDecoration(color: KprimaryColour,
          borderRadius: BorderRadius.only
          (
            bottomLeft: Radius.circular(36),
            bottomRight: Radius.circular(36),
            )
          ),

          child: Row(
            children: <Widget>[
              Text("Hi Sandeepa"
              , style: Theme.of(context).textTheme.headline5!.copyWith(
                color :Colors.white,
                fontWeight: FontWeight.bold ),
                ),
              
                Spacer(),
                

            ],
          ),
          ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: KdefaultPadding),
              padding:EdgeInsets.symmetric(horizontal:KdefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: KprimaryColour.withOpacity(0.23), 
                  ),
                ]
              ),

              child: Row(
                children: [
                  Expanded(
                                          child: TextField(
                      
                      decoration: InputDecoration(
                        hintText: "Search",
                        
                        hintStyle: TextStyle(
                          color: KprimaryColour.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                       // suffixIcon: SvgPicture.asset("assets/icons/search.svg")
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),

            )
            ),
        ],
      ),
    );
  }
}