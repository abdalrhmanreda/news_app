



import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void NavigatTo(context , widget)=>Navigator.push(context, MaterialPageRoute(builder: (context)=>widget)) ;


Widget ReusableTextFormFeild({
  required TextEditingController controller ,
  required bool isPass ,
  required String ?Function(String?)? validation ,
})=>TextFormField(
  controller: controller,
  obscureText: isPass,
  validator: validation,
  decoration:  InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    hoverColor: Colors.white ,
    fillColor:  Colors.white ,
    filled: true ,
    suffixIcon: isPass?Icon(Icons.visibility_off_outlined):null ,


  ),
) ;




Widget ListHomeitem (list)=>ListView.builder(
  physics: const BouncingScrollPhysics(),
    itemBuilder:(context , index)=>Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(15),
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white ,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 280,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:  DecorationImage(
                  image: NetworkImage(
                      list[index]['urlToImage'] ?? 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930'
                  ) ,
                  fit: BoxFit.cover
              ),
            ),
          ) ,
          const SizedBox(height: 10) ,
          Row(
            children:  [
              const SizedBox(width: 25,) ,
              const Icon(Icons.double_arrow_outlined , color: Colors.grey , size: 20,) ,
              const SizedBox(width: 25,) ,
              Text(
                list[index]['source'] ['name'],
                style: const TextStyle(color: Colors.grey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          const SizedBox(height: 15,) ,
           Text(
           list[index]['title'] ,
            style: const TextStyle(
              fontSize: 18 ,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ) ,
          const SizedBox(height: 15,) ,

           Text(
            list[index]['description']??"" ,
             maxLines: 2,
             overflow:TextOverflow.ellipsis ,

          ) ,

          const SizedBox(height: 15,) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25) ,
                    color: Color(0xffcbc9f5)//Color(0xff323f72)
                ),
                child:  Text(
                  list[index]['source']['name'] ,
                  style: const TextStyle(
                      color: Color(0xff323f72)
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ) ,
               Text(DateFormat.yMMMd().format(DateTime.now()).toString()) ,
              const Icon(Icons.batch_prediction_outlined)
            ],
          )

        ],
      ),
    ) ,
    itemCount: list.length,
);


Widget ListSearchItem(list)=>ListView.separated(
  scrollDirection: Axis.horizontal,
    itemBuilder: (context ,int index)=>Container(
      padding: const EdgeInsets.all(10),
      height: 210,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white , 
        borderRadius: BorderRadius.circular(15) ,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15) ,
              image:  DecorationImage(
                image: NetworkImage(list[index]['urlToImage']??'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930') ,
                fit: BoxFit.fill ,



              ) ,

            ),
          ) ,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [

              const Icon(Icons.double_arrow_outlined , color: Colors.grey , size: 20,) ,
              const SizedBox(width: 10,) ,
              Text(
                list[index]['source'] ['name'],
                style: const TextStyle(color: Colors.grey , fontSize: 10),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          const SizedBox(height: 5,) ,
          Text(
            list[index]['title'] ,
            style: const TextStyle(
              fontSize: 12 ,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ) ,
          const SizedBox(height: 5,) ,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text(DateFormat.yMMMd().format(DateTime.now()).toString() , style: const TextStyle(fontSize: 12),) ,
              const Icon(Icons.batch_prediction_outlined , size: 22,)
            ],
          )
        ],
      ),
    ),
    separatorBuilder:(context , index)=>const SizedBox(width: 15,),
    itemCount: list.length,
);

Widget SmallWidget({
  required String text ,
  required int TextColor ,
  required int ConColor ,
  Widget?widget ,
  context ,
})=>    InkWell(
  onTap: ()=>NavigatTo(context, widget),
  child:   Container(

    alignment: Alignment.center,

    height: 30,

    width: 110,

    decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(25) ,

        color: Color(ConColor)//Color(0xff323f72)

    ),

    child:  Text(text , style: TextStyle(color: Color(TextColor)),),

  ),
)  ;