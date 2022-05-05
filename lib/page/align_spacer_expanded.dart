import 'package:flutter/material.dart';

class AlignSpacerExpandedWidgetPage extends StatelessWidget{
  const AlignSpacerExpandedWidgetPage({
    Key? key,
}) : super(key:key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body : Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Container(
           color: Colors.blue,
           width : 40,
           height : 40,
         ),
         const Spacer(),
         Container(
           color: Colors.yellow,
           width : 40,
           height : 40,
         ),
         const Spacer(
           flex : 1,
         ),
         Container(
           color: Colors.purple,
           width : 40,
           height : 40,
         ),
         // Spacer를 동해 공간 가지기
         Container(
           color: Colors.pink,
           child: const Text("어떤 값이라"),
         ),
         const Spacer(
           flex : 3,
         ),
         const Expanded(
             flex: 1,
             child: const Text("1234")),
         Container(
           color: Colors.purple,
           height: 40,
           width: 40,
         ),

         // sizedBox로 공간을 차지하는 것이 아닌 Spacer로 한다.
         // SizedBox(
         //   height: 40,
           // width: MediaQuery.of(context).size.width,
           // width: (MediaQuery.of(context).size.width) - (40 * 5),
         // )
       ],
     )
   );
  }


}