import 'package:flutter/material.dart';

class AdviceScreen extends StatelessWidget {
  const AdviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0,right: 12.0,top: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 1560,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.grey[300],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, right: 15),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'نصائح قبل التمرين',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 0.5,
                                color: Color(0x802196F3),
                              ),
                              Shadow(
                                offset: Offset(1.3, 1.3),
                                blurRadius: 1.0,
                                color: Color(0x802196F3),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '1-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'تناول الكربوهيدرات المعقدة قبل التمرين => ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                              TextSpan(
                                  text: 'من أهم الخطوات التي يجب القيام بها قبل أي نوع من الأنشطة البدنية هو تناول وجبة مثالية تساعدك في تقديم أفضل ما لديك خلال أوقات التمرين، يجب أن تحتوي وجبة قبل التمرين على كمية جيدة من الكربوهيدرات المعقدة التي تختلف عن الكربوهيدرات البسيطة من ناحية كونها بطيئة الامتصاص وتمد الجسم بالطاقة لفترات طويلة من الزمن أي أنها تغطي وقت التمرين الخاص بك، ومن أفضل أنواع الكربوهيدرات المعقدة هو الشوفان أو الحبوب الكاملة بشكل عام.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '2-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'الترطيب الكافي للجسم => ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)), TextSpan(
                                  text: 'تتحكم الماء في مستويات الطاقة الخاصة بك خلال الجولة التدريبية، يمكن أن يؤثر الجفاف على أدائك الرياضي بشكل كبير وقد يكون الجفاف أحد الأسباب الرئيسية لزيادة احتمالية تعرضك للإصابات الرياضية، خلال التمرين يفرز الجسم كميات كبيرة من العرق وبالتالي أنت في حاجة إلى شرب الكثير من الماء قبل وخلال أوقات ممارسة التمرين. ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '2-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'الإحماء قبل التمرين => ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)), TextSpan(
                                  text: 'من أهم الخطوات التي أحيانا يهملها بعض من المبتدئين هي الإحماء، يعد الإحماء من أهم الخطوات التي يجب أن يقوم بها أي شخص قبل أي نشاط بدني، يعمل الإحماء على تجهيز الجسم بدنيا وذهنيا لممارسة النشاط البدني عالي الشدة، أن لم تقم بما يكفي من الإحماء للجسم والعضلات والمفاصل فمن المحتمل أن تتعرض للإصابات إلى جانب أن جودة التمرين لن تكون في أفضل الأحوال، لذلك قبل التمرين ينصح بممارسة مجموعة من حركات الإحماء لمدة بين 5-10 دقائق.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10,), Container(
              height: 1700,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, right: 15),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'نصائح بعد التمرين',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 0.5,
                                color: Color(0x802196F3),
                              ),
                              Shadow(
                                offset: Offset(1.3, 1.3),
                                blurRadius: 1.0,
                                color: Color(0x802196F3),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '1-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'تهدئة وتبريد العضلات بعد التمرين => ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                              TextSpan(
                                  text: 'بعد الانتهاء من التمرين من الجيد القيام بمجموعة تمارين التبريد والإطالة والتي لها دور في عملية الاستشفاء العضلي إلى جانب زيادة مرونة الجسم بالإضافة أنها أيضا تقلل من تراكم حمض اللاكتيك الذي يحدث بسبب التمارين الرياضية العنيفة والذي يسبب الألم العضلي الشديد للجسم.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '2-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'الاستحمام بالماء البارد بعد التمرين => ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)), TextSpan(
                                  text: 'من أهم العادات الصحية التي يجب أن تقوم بها بعد التمرين هي الاستحمام بالماء البارد، هناك الكثير من الأبحاث التي أثبتت أن الماء البارد بعد التمرين يمكن أن يكون لها دور كبير في عملية الاستشفاء للعضلات وتهدئة الجسم وضغط الدم بشكل مثالي وزيادة الشعور بالاسترخاء. ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '2-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'تناول وجبة غنية بالبروتين والكربوهيدرات بعد التمرين => ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)), TextSpan(
                                  text: 'من أهم الوجبات على مدار اليوم لأي رياضي هي وجبة بعد التمرين، تعد وجبة بعد التمرين من الوجبات التي تساهم بشكل كبير في النتائج التي تصل إليها، يجب أن تحتوي وجبة بعد التمرين على كمية جيدة من البروتين سريع الامتصاص وهو نوع من البروتين لا يحتاج إلى وقت طويل لكي يتم نقله إلى الخلايا والاستفادة منه في الاستشفاء العضلي، بالإضافة إلى تناول مصدر للطاقة سريع الامتصاص يمد الجسم بوقود لتعويض مخازن الجليكوجين التي تصبح فارغة تقريبا بعد التمرين مثل الخبز الأبيض أو المعكرونة أو الفاكهة مثل الموز.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '2-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'النوم بشكل كافي في المساء => ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)), TextSpan(
                                  text: 'أخيرا يجب أن ينتهي يومك بالحصول على ما يكفي من الراحة والنوم وتجنب السهر لفترات طويلة، خلال النوم يفرز الجسم مجموعة من الهرمونات الضرورية التي تشارك في عملية الاستشفاء العضلي والبناء، يفضل أن تحصل على قدر كافي من النوم يتراوح بين 7-9 ساعات.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, right: 15),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'فوائد الرياضة للجسم',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 0.5,
                                color: Color(0x802196F3),
                              ),
                              Shadow(
                                offset: Offset(1.3, 1.3),
                                blurRadius: 1.0,
                                color: Color(0x802196F3),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '1-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: ' تقوي عضلات الجسم وتحسن من مظهرة',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '2-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'تزيد من نشاط الدورة الدموية.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '3-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'تقي من الأمراض المزمنة كأمراض القلب، والشرايين، والسكري، والسرطان، والسكتة الدماغية، وتمنحنا وزناً مثالياً على طبقٍ من ذهب، وتحارب البدانة والسمنة التي هي مفتاح كل شر على الصعيد الصحي.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: RichText(
                            text: const TextSpan(
                                text: '4-  ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                                children: [
                                  TextSpan(
                                      text: 'تقوي جهاز المناعة في الجسم',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '5-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'تحسن من قوة الملاحظة وسرعة البديهة، وتمنح الإنسان القدرة على التركيز، وتقلل من نسبة التشتت الذهني بشكل كبير.',

                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, right: 18.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '6-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'تمنحنا قدرة أكبر على الانضباط والتحكم بالضغوط والتوتر في حياتنا.',

                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, right: 15),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'أفضل 10 أطعمه يمكن تناولها قبل ممارسة الرياضة:',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 0.5,
                                color: Color(0x802196F3),
                              ),
                              Shadow(
                                offset: Offset(1.3, 1.3),
                                blurRadius: 1.0,
                                color: Color(0x802196F3),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '2-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الشوفان',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '1-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الموز',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '4-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الفواكة المجففة',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '3-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'البيض',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '6-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الجبن الأبيض',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '5-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'صدور الدجاج',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '8-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الكافيين',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '7-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الحمص',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '9-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: ' الفواكة الطبيعية',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, right: 18.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '10-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'طبق سلطة',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, right: 15),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'أفضل 10 أطعمه يمكن تناولها بعد ممارسة الرياضة:',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 0.5,
                                color: Color(0x802196F3),
                              ),
                              Shadow(
                                offset: Offset(1.3, 1.3),
                                blurRadius: 1.0,
                                color: Color(0x802196F3),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'يعتبر الحصول على العناصر الغذائيّة اللّازمة عند'
                        'الإنتهاء من القيام بالتّمرين أمراً ضرورياً جداً، وذلك لإعادة بناء البروتينات في العضلات، واسترجاع مخازن'
                        ' الجلايكوجين، وتحفيز نموّ العضلات الجديدة، لذلك يفضّل تناول وجبةٍ غذائيّةٍ مناسبةٍ خلال ٤٥ دقيقة من انتهاء'
                        ' التّمرين الرّياضي. ويفضّل اختيار الأطعمة سهلة الهضم، وسريعة الامتصاص، حيث يجب أنّ تحتوي وجبة ما'
                        ' بعد التّمرين على البروتينات والنّشويات والدّهون سهلة الهضم، كما يجب الحرص على شرب كمياتٍ كافيةٍ من الماء',
                        style: TextStyle(fontSize: 22.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '2-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: ' الدجاج المشوي',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '1-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الفواكةوالزبادي',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '4-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: "البطاطا الحلوة",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '3-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الكينوا',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '6-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الأفوكادو',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '5-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'مخفوق البروتين',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '8-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'سمك السلمون',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: RichText(
                              text: const TextSpan(
                                  text: '7-  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  children: [
                                    TextSpan(
                                        text: 'الحمص',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 6.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '9-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text:'حليب الشيكولاتة',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, right: 18.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        text: const TextSpan(
                            text: '10-  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: [
                              TextSpan(
                                  text: 'عجة البيض مع توست القمح الكامل',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
// const String imagePath = "assets/images";
//
// class ImageAssets {
//   static const String exercise1 = '$imagePath/exercise1.gif';
//   static const String exercise2 = "$imagePath/exercise2.gif";
//   static const String exercise3 = "$imagePath/exercise3.gif";
//   static const String exercise4 = "$imagePath/exercise4.gif";
//   static const String exercise5 = "$imagePath/exercise18.gif";
//   static const String exercise6 = "$imagePath/exercise6.gif";
//   static const String exercise7 = "$imagePath/exercise7.gif";
//   static const String exercise8 = "$imagePath/exercise8.gif";
//   static const String exercise9 = "$imagePath/exercise9.gif";
//   static const String exercise10 = "$imagePath/exercise10.gif";
//   static const String exercise11 = "$imagePath/exercise11.gif";
//   static const String exercise12 = "$imagePath/exercise12.gif";
//   static const String exercise13 = "$imagePath/exercise13.gif";
//   static const String exercise14 = "$imagePath/exercise14.gif";
//
// }
//
