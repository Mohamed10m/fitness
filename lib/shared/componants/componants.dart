import 'package:easy_localization/easy_localization.dart';
import 'package:fitness/shared/componants/color_manager.dart';
import 'package:fitness/shared/componants/strings_manager.dart';
import 'package:flutter/material.dart';

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) {
  return false;
});

Widget defaultFormField({
  required TextEditingController controller,
  required String text,
  required TextInputType type,
  FormFieldValidator<String>? validate,
}) =>
    TextFormField(
      decoration: InputDecoration(

          fillColor:ColorManager.white,
          filled: true,
          border: InputBorder.none,
          hintText: text,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black26,
            fontSize: 18,
          )),
      controller: controller,
      keyboardType: type,
      validator: validate,
    );

Widget customButton(
    {required String text,
      Color? color,
      Color? textColor,
      Color borderColor = Colors.white,
      required Function onPress,
      double? height = 40,
      double width = 150,
      double borderWidth = 1,
      double radius = 30,
      double padding = 0}) =>
    Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: MaterialButton(
          padding: EdgeInsets.only(left: padding),
          minWidth: width,
          height: 40,
          onPressed: () {
            onPress();
          },
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontFamily: 'Signika',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )),
    );


Future normalDialog(BuildContext context, String title, String message) {
  return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
          title: ListTile(
            leading: Image.asset('images/teddy-bear.png'),
            title: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Signika',
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 28),
            ),
            subtitle: Text(message,style: const TextStyle(fontWeight: FontWeight.bold),),
          ),
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('ok',style: TextStyle(fontSize: 30,color: Colors.red),),
            )
          ]));
}

// UserId
dynamic uId = '';

Widget defaultAppBar({required String nameOfCard,required Function onPress,required Function onPressed}){
  return Container(
    height: 120,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30)),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 2),
          blurRadius: 5,
          spreadRadius: 1,
          color: Colors.grey,
        ),
      ],
    ),
    child: Transform.translate(offset: const Offset(0, 12),
        child: Row(
          children: [
            const Spacer(),
            IconButton(
                onPressed: () {
                  onPress();
                },
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  size: 35,
                )),
            const Spacer(
              flex: 3,
            ),
            Text(
              nameOfCard,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40),
            ),
            const Spacer(
              flex: 3,
            ),
            InkWell(
              onTap: () {
                onPressed();
              },
              child: SizedBox(
                height: 60,
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Image.asset(
                      'images/dictionary.png',
                      height: 35,
                      width: 35,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Dictionary',
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        )),
  );
}

Widget defaultCardItem({dynamic name, required String image1, required String image}){
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/$image1',
          ),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10,
            spreadRadius: -5,
            color: Colors.black12,
          ),
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          image,
          height: 80,
          width: 80,
        ),
        Text(
          '$name',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    ),
  );


}

Widget buildPage() => Padding(
  padding: const EdgeInsets.all(16.0),
  child: FittedBox(
    child: Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(10.0),
        clipBehavior: Clip.antiAlias,
        shadowColor: const Color(0x802196F3),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      AppStrings.title1.tr(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(                      AppStrings.subtitle.tr(),
                        style: const TextStyle(
                            color: Colors.black45, fontSize: 8)),
                  ],
                ),
              ),

            ],
          ),
        )),
  ),
);


