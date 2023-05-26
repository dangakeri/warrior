// import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
// import 'package:flutter_svg/svg.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// import '../consts/app_colors.dart';
// import '../widgets/ikigai_container_widget.dart';

// class IkigaiPage extends StatelessWidget {
//   const IkigaiPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.background1,
//       body: ScrollConfiguration(
//         behavior: NoGlow(),
//         child: ListView(
//           // physics: const BouncingScrollPhysics(),
//           children: [
//             Column(
//               children: [
//                 const SizedBox(height: 60),
//                 SvgPicture.asset('assets/ikigai.svg', height: 150),
//                 const SizedBox(height: 10),
//                 const Center(
//                     child: Text(
//                   'Live Longer',
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontFamily: 'Nunito',
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 )),
//                 const SizedBox(height: 15),
//                 const Center(
//                     child: Text(
//                   'Routine for Longetivity',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w100,
//                     fontFamily: 'Nunito',
//                   ),
//                 )),
//                 const SizedBox(height: 25),
//                 IkigaiContainerWidget(
//                   text: 'Diet',
//                   color: Colors.black,
//                   content: 'Eat less live longer',
//                   callback: () {
//                     showMaterialModalBottomSheet(
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40),
//                           topRight: Radius.circular(40),
//                         ),
//                       ),
//                       context: context,
//                       builder: (context) => SingleChildScrollView(
//                         controller: ModalScrollController.of(context),
//                         child: Container(
//                           color: AppColors.background1,
//                           height: 750,
//                           child: ListView(
//                               physics: const BouncingScrollPhysics(),
//                               children: const [
//                                 Column(
//                                   children: [
//                                     SizedBox(height: 20),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         initiallyExpanded: true,
//                                         title: Text(
//                                           'Diet',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               '• Eat less, live longer. Feed up to 80% full. People who tend to eat more age more as they use a lot of their energy producing enzymes necessary for digesting food eaten. ~ Hara hachi bu\n• “Eat a wide variety of foods, especially vegetables” – Vegetables are a wide source of minerals necessary for cell and tissue growth. They include Spinach, cabbages, kales and more.\n• Avoid Milk. It contains a protein content that accelerates aging.\n• Rarely take sugar, instead take sugarcane. Sugar is widely known to be the cause of Diabetes, memory loss and rapid aging. People who tend to eat high amount of sugar grow fat and fast causing acne and aging process.\n• Eat a lot of grains as they contain huge amount of energy.\n• Take Jasmine or green tea, as it:\n• Reduce the risk of a heart attack\n• Strengthen the immune system\n• Help relieve stress\n• Lowering cholesterol\n• Lowering blood sugar levels\n• Improving Circulation\n• Promotes bone health\n• Cleansing Diuretics effects.\n• Other diets include:\n“Vegetables such as broccoli and chard, for their high concentration of water, minerals, and fiber\nOily fish such as salmon, mackerel, tuna, and sardines, for all the antioxidants in their fat\nFruits such as citrus, strawberries, and apricots; they are an excellent source of vitamins and help eliminate toxins from the body\nBerries such as blueberries and goji berries; they are rich in phytochemical antioxidants\nDried fruits, which contain vitamins and antioxidants, and give you energy\nGrains such as oats and wheat, which give you energy and contain minerals\nOlive oil, for its antioxidant effects that show in your skin\nRed wine, in moderation, for its antioxidant and vasodilatory properties”\nEliminate:\n“Foods that should be eliminated are refined sugar and grains, processed baked goods, and prepared foods, along with cow’s milk and all its derivatives. Following this diet will help you feel younger and slow the process of premature aging.”',
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: 20),
//                                   ],
//                                 ),
//                               ]),
//                         ),
//                       ),
//                     );
//                   },
//                   image: SvgPicture.asset(
//                     'assets/diet.svg',
//                     height: 100,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 IkigaiContainerWidget(
//                   text: 'Sleep',
//                   color: Colors.orange,
//                   content: 'Stages of sleep',
//                   callback: () {
//                     showMaterialModalBottomSheet(
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40),
//                           topRight: Radius.circular(40),
//                         ),
//                       ),
//                       context: context,
//                       builder: (context) => SingleChildScrollView(
//                         controller: ModalScrollController.of(context),
//                         child: Container(
//                           color: AppColors.background1,
//                           height: 750,
//                           child: ListView(
//                               physics: const BouncingScrollPhysics(),
//                               children: const [
//                                 Column(
//                                   children: [
//                                     SizedBox(height: 20),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         initiallyExpanded: true,
//                                         title: Text(
//                                           'What is Sleep ?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "You may think nothing is happening when you sleep. But parts of your brain are quite active during sleep. And enough sleep (or lack of it) affects your physical and mental health. When you sleep, your body has a chance to rest and restore energy. A good night’s sleep can help you cope with stress, solve problems or recover from illness. Not getting enough sleep can lead to many health concerns, affecting how you think and feel.\nDuring the night, you cycle through two types of sleep: non-rapid eye movement (non-REM) sleep and rapid eye movement (REM) sleep. Your brain and body act differently during these different phases.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'What happens in the brain during sleep?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Researchers continue to study sleep and its effect on us. While we’ve learned a lot about sleep, there’s still much that’s unknown.\nWe know that brain chemicals are very involved in our sleep cycle. Neurotransmitters are chemicals that help the nerves communicate. They control whether we’re awake or asleep, depending on which neurons (nerve cells) they’re acting on:\n• Neurons in the brainstem (where the brain and spinal cord meet) produce neurotransmitters called serotonin and norepinephrine. These chemicals keep our brain active when we’re awake.\n• Neurons located at the base of the brain are responsible for us falling asleep. It seems these neurons turn off the signals that keep us awake.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'Why do we need sleep?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Sleep helps us in many ways. We need it for:\n• Growth: In children and young adults, deep sleep (sleep that’s harder to wake from) supports growth. The body releases growth hormone during this type of sleep. The body also increases production of proteins, which we need for cell growth and to repair damage.\n• Nervous system function: A lack of sleep affects our memory, performance and ability to think clearly. If a person is severely sleep deprived, they may even experience neurological problems such as mood swings and hallucinations. Sleep also helps our nerve cells. They can repair themselves, so they function at their best. And certain nerve connections get a chance to turn on, strengthening our brain and thinking ability.\n• Survival: Researchers don’t fully understand why sleep is so essential. But studies in animals have shown that getting deprived of REM sleep can shorten lifespans. Lack of sleep may harm the immune system, which protects us from infections.\n• Well-being: People who don’t get enough sleep are at higher risk for developing various health conditions including obesity, diabetes and heart problems",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'What are the stages of sleep?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "When you sleep, your brain goes through natural cycles of activity. There are four total stages of sleep, divided into two phases:\n• Non-REM sleep happens first and includes three stages. The last two stage of non-REM sleep is when you sleep deeply. It’s hard to wake up from this stage of sleep.\n• REM sleep happens about an hour to an hour and a half after falling asleep. REM sleep is when you tend to have vivid dreams.\nAs you sleep, your body cycles through non-REM and REM sleep. You usually start the sleep cycle with stage 1 of non-REM sleep. You pass through the other stages of non-REM sleep, followed by a short period of REM sleep. Then the cycle begins again at stage 1.\nA full sleep cycle takes about 90 to 110 minutes. Your first REM period is short. As the night goes on, you’ll have longer REM sleep and less deep sleep.\nWhat is non-REM sleep?\nThree stages make up non-REM sleep.\nStage 1:\nThis stage of light sleeping lasts for five to 10 minutes.\n• Everything starts to slow down, including your eye movement and muscle activity.\n• Your eyes stay closed. If you get woken from stage 1 sleep, you may feel as if you haven’t slept at all. You may remember pieces of images.\n• Sometimes, you may feel like you’re starting to fall and then experience a sudden muscle contraction. Healthcare providers call this motion hypnic myoclonic or hypnic jerk. Hypnic jerks are common and not anything to be concerned about as this occurrence is unlikely to cause any complications or side effects.\nStage 2:\n• This period of light sleep features periods of muscle tone (muscles partially contracting) mixed with periods of muscle relaxation.\n• Your eye movement stops, heart rate slows and body temperature decreases.\n• Brain waves become slower. Occasionally, you’ll have a burst of rapid waves called sleep spindles.\n• Your body prepares to enter deep sleep.\nStages 3\n• This stage is deep sleep.\n• During this stage, your brain produces delta waves, very slow brain waves.\n• It’s hard for someone to wake you up during this stage.\n• You have no eye movement or muscle activity.\n• If you’re woken up, you may feel groggy and disoriented for a few minutes.\nWhat happens during non-REM sleep?\nDuring non-REM stages, your body:\n• Builds bone and muscle.\n• Repairs and regenerates tissues.\n• Strengthens the immune system.\nAs you age, you get less non-REM sleep. Older adults get less deep sleep than younger people.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'What is REM sleep?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "When you enter REM sleep, brain activity increases again, meaning sleep is not as deep. The activity levels are like when you’re awake. That’s why REM sleep is the stage where you’ll have intense dreams.\nAt the same time, major muscles that you normally control (such as arms and legs) can’t move. In effect, they become temporarily paralyzed.\nUsually, REM sleep arrives about an hour and a half after you go to sleep. The first REM period lasts about 10 minutes. Each REM stage that follows gets longer and longer.\nThe amount of REM sleep you experience changes as you age. The percentage of REM sleep:\n• Is highest during infancy and early childhood.\n• Declines during adolescence and young adulthood.\n• Declines even more as you get older.\nWhat else happens to the body in REM sleep?\nBesides increased brain activity and muscle relaxation, your body goes through a series of changes during REM sleep. These changes include:\n• Faster breathing.\n• Increased heart rate and blood pressure.\n• Penile erections.\n• Rapid eye movement",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'What affects sleep quality?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Chemical signals in the brain influence our sleep and wake cycles. Anything that shifts the balance of these neurotransmitters can make us feel drowsier or more awake. For example:\n• Alcohol may help people fall into a light sleep. But it reduces the deeper stages of sleep and REM sleep and leads to more disrupted sleep.\n• Caffeine and pseudoephedrine (drug ingredient) can stimulate the brain. They may cause insomnia, an inability to sleep. Watch out for caffeinated drinks such as coffee and drugs such as diet pills and decongestants.\n• Medications such as antidepressants can cause less REM sleep.\n• People who smoke heavily often sleep lightly and have less REM sleep. They may wake up after a few hours because they experience nicotine withdrawal.\n• Very hot or cold temperatures can disrupt REM sleep. We’re less able to regulate body temperature during REM sleep",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'How much sleep do I need?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Many factors affect how much sleep you need. Age is a big factor:\n• Infants need about 16 hours a day.\n• Toddlers and preschoolers need about 12 hours.\n• Teenagers need about nine hours.\n• Adults need seven to eight (though some are fine with five and others need closer to 10).\n• Pregnant people often need more sleep during the first trimester.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'What is a sleep debt?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "nIf you haven’t slept well or long enough for a few days, you might create a sleep debt. Once your debt builds up, you may feel physically and mentally exhausted. Try to make sure you get enough sleep every night to avoid creating this debt. You can’t necessarily make up your debt by sleeping a lot on the weekends. It’s best to get enough sleep all week long.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'Can we adapt to needing less sleep?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Generally, people don’t adapt to getting less sleep than they need. You may feel like you’re used to reduced sleep, but it still affects your function. For example, it can harm your judgment and reaction time.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'What is sleep deprivation?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "When you’re sleep deprived, you’re not getting the total amount of sleep you need. Signs of sleep deprivation include:\n• Falling asleep within a few minutes of lying down.\n• Feeling drowsy during the day.\n• Nodding off for microsleeps — short periods of sleep during the day when you’re otherwise awake.\n• Sleep deprivation can be dangerous. Driving while tired causes about 100,000 car accidents each year, according to the National Highway Traffic Safety Administration. It also causes 1,500 deaths. If you feel tired on the road, pull over. It’s not safe to drive if you’re drowsy.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'What are sleep disorders?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "According to the American Sleep Association, at least 40 million Americans experience sleep disorders each year. Another 20 million have occasional sleep issues. These disorders cause sleep deprivation, leading to problems with work, school, driving and social activities.\nThere are more than 70 sleep disorders. A few, known as disruptive sleep disorders, lead to moving around or making sounds. Other sleep disorders involve food. And some sleep disorders overlap with psychiatric conditions. If you have problems with sleep or feel very tired, talk to your healthcare provider about a possible sleep disorder.\nSome of the most common sleep disorders include:\n• Insomnia disorder: Many people experience insomnia at some point in their lives, with trouble falling or staying asleep. Sleeping pills can help in the short-term but behavioral strategies to improve sleep including cognitive behavioral therapy for Insomnia (CBT-i) is a much better long term solution.\n• Narcolepsy: You may suddenly fall asleep during the day, even if you had a good sleep the night before. These “sleep attacks” can last a few seconds or up to 30 minutes. Talk to your provider about your symptoms and additional testing will need to be completed to diagnosis this sleep disorder.\n• Restless legs syndrome (RLS): You may feel unpleasant sensations in your legs (such as prickling or tingling). You may also have an urge to move your legs to get relief. If you have RLS, talk to your healthcare provider about medication to help improve symptoms.\napnea: You may experience periods of interrupted breathing while you sleep, a condition called sleep apnea. Often, getting polysomnography (sleep study) in a sleep center is the best way to get properly diagnosed and treated. Sometimes, weight loss or not sleeping on your back can help. But you may need a special device to help you breathe while you sleep.• Snoring: People who regularly snore can have disturbed sleep. They can also disturb the sleep of their bed partner. Snoring often leads to feeling tired during the day. Several treatment options are available for snoring.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           'What are good sleep habits?',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Good sleep habits, also called good sleep hygiene, are practices to help you get enough quality sleep.\nDo:\n• Have a sleep schedule: Go to sleep and wake up around the same time every day, even on weekends and vacations.\n• Clear your mind before bed: Make a to-do list early in the evening, so you won’t stay awake in bed and worry about the next day.\n• Create a good sleep environment: Make sure your bed and pillows are comfortable. Turn down the lights and avoid loud sounds. Keep the room at a comfortable temperature.\n• Exercise every day: Stay active but try to avoid exercising during the few hours right before bed.\n• Relax: Before bed, take a warm bath, read or do another relaxing activity.\n• See your healthcare provider: If you’ve been having trouble sleeping or feel extra drowsy during the day, talk to your provider. There are many treatments available for sleep disorders.\nDon’t:\n    • Consume caffeine, nicotine and alcohol late in the day: These substances can interfere with your ability to fall and stay asleep.\n• Lie in bed awake: It’s better to do a soothing activity, like reading, until you feel tired.\n• Nap during the day: A short nap (less than 30 minutes) is OK if you’re very sleepy. But try to avoid naps after 3 p.m.\n• Think negative thoughts: Try to avoid a negative mindset when going to bed, such as, “If I don’t get enough sleep now, I won’t get through my day tomorrow!”\n• Use electronics right before bed: Electronics, such as your phone or tablet, can interfere with your body’s production of melatonin. This hormone gets released before bed to help you feel tired.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: 20),
//                                   ],
//                                 ),
//                               ]),
//                         ),
//                       ),
//                     );
//                   },
//                   image: SvgPicture.asset('assets/sleep.svg', height: 100),
//                 ),
//                 const SizedBox(height: 30),
//                 IkigaiContainerWidget(
//                   text: 'Exercise',
//                   color: Colors.green,
//                   content: 'Masculine',
//                   callback: () {
//                     showMaterialModalBottomSheet(
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40),
//                           topRight: Radius.circular(40),
//                         ),
//                       ),
//                       context: context,
//                       builder: (context) => SingleChildScrollView(
//                         controller: ModalScrollController.of(context),
//                         child: Container(
//                           color: AppColors.background1,
//                           height: 750,
//                           child: ListView(
//                               physics: const BouncingScrollPhysics(),
//                               children: const [
//                                 Column(
//                                   children: [
//                                     SizedBox(height: 20),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: Row(
//                                         children: [
//                                           SizedBox(width: 20),
//                                           Text(
//                                             'Exercise',
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.w500,
//                                               fontSize: 20,
//                                               fontFamily: 'Nunito',
//                                               height: 1.5,
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         initiallyExpanded: true,
//                                         title: Text(
//                                           '1. Exercise controls weight',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Exercise can help prevent excess weight gain or help maintain weight loss. When you engage in physical activity, you burn calories. The more intense the activity, the more calories you burn.\nRegular trips to the gym are great, but don't worry if you can't find a large chunk of time to exercise every day. Any amount of activity is better than none at all. To reap the benefits of exercise, just get more active throughout your day — take the stairs instead of the elevator or rev up your household chores. Consistency is key.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '2. Exercise combats health conditions and diseases',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Worried about heart disease? Hoping to prevent high blood pressure? No matter what your current weight is, being active boosts high-density lipoprotein (HDL) cholesterol, the \"good\" cholesterol, and it decreases unhealthy triglycerides. This one-two punch keeps your blood flowing smoothly, which decreases your risk of cardiovascular diseases.\nRegular exercise helps prevent or manage many health problems and concerns, including:\n• Stroke\n• Metabolic syndrome\n• High blood pressure\n• Type 2 diabetes\n• Depression\n• Anxiety\n• Many types of cancer\n• Arthritis\n• Falls\nIt can also help improve cognitive function and helps lower the risk of death from all causes.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '3. Exercise improves mood',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Need an emotional lift? Or need to destress after a stressful day? A gym session or brisk walk can help. Physical activity stimulates various brain chemicals that may leave you feeling happier, more relaxed and less anxious.\nYou may also feel better about your appearance and yourself when you exercise regularly, which can boost your confidence and improve your self-esteem.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '4. Exercise boosts energy',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Winded by grocery shopping or household chores? Regular physical activity can improve your muscle strength and boost your endurance.\nExercise delivers oxygen and nutrients to your tissues and helps your cardiovascular system work more efficiently. And when your heart and lung health improve, you have more energy to tackle daily chores.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '5. Exercise promotes better sleep',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Struggling to snooze? Regular physical activity can help you fall asleep faster, get better sleep and deepen your sleep. Just don't exercise too close to bedtime, or you may be too energized to go to sleep.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '6. Exercise puts the spark back into your sex life',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Do you feel too tired or too out of shape to enjoy physical intimacy? Regular physical activity can improve energy levels and increase your confidence about your physical appearance, which may boost your sex life.\nBut there's even more to it than that. Regular physical activity may enhance arousal for women. And men who exercise regularly are less likely to have problems with erectile dysfunction than are men who don't exercise.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: 20),
//                                   ],
//                                 ),
//                               ]),
//                         ),
//                       ),
//                     );
//                   },
//                   image: SvgPicture.asset('assets/exercise.svg', height: 120),
//                 ),
//                 const SizedBox(height: 30),
//                 IkigaiContainerWidget(
//                   text: 'Mental',
//                   color: Colors.red,
//                   content: 'Maintain mental health',
//                   callback: () {
//                     showMaterialModalBottomSheet(
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40),
//                           topRight: Radius.circular(40),
//                         ),
//                       ),
//                       context: context,
//                       builder: (context) => SingleChildScrollView(
//                         controller: ModalScrollController.of(context),
//                         child: Container(
//                           color: AppColors.background1,
//                           height: 750,
//                           child: ListView(
//                               physics: const BouncingScrollPhysics(),
//                               children: const [
//                                 Column(
//                                   children: [
//                                     SizedBox(height: 20),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: Row(
//                                         children: [
//                                           SizedBox(width: 20),
//                                           Text(
//                                             'Mental',
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.w500,
//                                               fontSize: 20,
//                                               fontFamily: 'Nunito',
//                                               height: 1.5,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         initiallyExpanded: true,
//                                         title: Text(
//                                           '1. Connect with other people',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Good relationships are important for your mental wellbeing. They can:\n• help you to build a sense of belonging and self-worth\n• give you an opportunity to share positive experiences\n• provide emotional support and allow you to support others\nThere are lots of things you could try to help build stronger and closer relationships:",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '2. Be physically active',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Being active is not only great for your physical health and fitness. Evidence also shows it can also improve your mental wellbeing by:\n• raising your self-esteem\n• helping you to set goals or challenges and achieve them\n• causing chemical changes in your brain which can help to positively change your mood\nFind out more about getting active",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '3. Learn new skills',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Research shows that learning new skills can also improve your mental wellbeing by:\n• boosting self-confidence and raising self-esteem\n• helping you to build a sense of purpose\n• helping you to connect with others\nEven if you feel like you do not have enough time, or you may not need to learn new things, there are lots of different ways to bring learning into your life.\nSome of the things you could try include:",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '4. Give to others',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Research suggests that acts of giving and kindness can help improve your mental wellbeing by:\n• creating positive feelings and a sense of reward\n• giving you a feeling of purpose and self-worth\n• helping you connect with other people\nIt could be small acts of kindness towards other people, or larger ones like volunteering in your local community.\nSome examples of the things you could try include:\n• saying thank you to someone for something they have done for you\n• asking friends, family or colleagues how they are and really listening to their answer\n• spending time with friends or relatives who need support or company\n• offering to help someone you know with DIY or a work project\n• volunteering in your community, such as helping at a school, hospital or care home\nPay attention to the present moment (mindfulness)\nPaying more attention to the present moment can improve your mental wellbeing. This includes your thoughts and feelings, your body and the world around you.\nSome people call this awareness \"mindfulness\". Mindfulness can help you enjoy life more and understand yourself better. It can positively change the way you feel about life and how you approach challenges.\nRead more about mindfulness, including steps you can take to be more mindful in your everyday life.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: 20),
//                                   ],
//                                 ),
//                               ]),
//                         ),
//                       ),
//                     );
//                   },
//                   image: SvgPicture.asset(
//                     'assets/mental.svg',
//                     height: 100,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 IkigaiContainerWidget(
//                   text: 'Nature',
//                   color: Colors.grey,
//                   content: 'Interact with nature',
//                   callback: () {
//                     showMaterialModalBottomSheet(
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40),
//                           topRight: Radius.circular(40),
//                         ),
//                       ),
//                       context: context,
//                       builder: (context) => SingleChildScrollView(
//                         controller: ModalScrollController.of(context),
//                         child: Container(
//                           color: AppColors.background1,
//                           height: 750,
//                           child: ListView(
//                               physics: const BouncingScrollPhysics(),
//                               children: const [
//                                 Column(
//                                   children: [
//                                     SizedBox(height: 20),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: Row(
//                                         children: [
//                                           SizedBox(width: 20),
//                                           Text(
//                                             'Connecting with nature',
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.w500,
//                                               fontSize: 20,
//                                               fontFamily: 'Nunito',
//                                               height: 1.5,
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         initiallyExpanded: true,
//                                         title: Text(
//                                           '1. Live in the moment ',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "To build a connection with nature, you must first detach yourself from all the noise and channel your energy towards nature experiences. You can practice this by first taking out a few minutes within the day to detach yourself from the busy schedules, take deep breaths and spend time taking in the trees, birds, and everything within your natural surroundings.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '2. Tune in to all your senses ',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Take a deep breath, feel the wind and sun penetrate your skin, listen closely to the whistling sound of trees and the sound of birds and insects. Focus further on these sounds and engage your sense of smell and taste. Engaging your senses whenever you’re outside allows you to appreciate your natural surrounding rather than passing them by.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '3. Combine your creativity with nature',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "You can explore your creativity by taking photos of animals, trees, the sky, water, and all of nature’s surroundings. You could also sit in your favorite spot and draw or paint beautiful natural scenery. This helps to calm your nerves, improve your mood and inspire creative ideas. Time away to think in nature might also help provide you with a new perspective on a problem or worry.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '4. Read nature books & quotes',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Reading nature books and quotes is a great way to take your mind on a psychological journey through nature’s beauty. You can read books related to different aspects of nature. For example, you can search out books that explain the history and evolution of animals and plants. You could also go for more creative books. Perhaps read nature poetry or read quotes that spur you towards nature. You can check out our picks of the best 70 nature quotes that are sure to inspire you.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '5. Connect with plants ',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "Do you love trees, flowers, and plants? Having green living things around us is a great way to connect with nature. You can visit a local garden or grow a few plants in your backyard. Take out time to pay attention to the movements of plants. Meditate on their scent. Notice their stems, leaves, roots, and everything in between. You could also take time to study the different kinds of plants, their names and observe how they interact with insects and other organisms.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       child: ExpansionTile(
//                                         iconColor: Colors.white,
//                                         collapsedIconColor: Colors.white,
//                                         title: Text(
//                                           '6. Sit under the night sky ',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 18,
//                                             fontFamily: 'Nunito',
//                                             height: 1.5,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         children: [
//                                           ListTile(
//                                             title: Text(
//                                               "If you've always been curious to learn about the stars, sitting under the night sky is an excellent opportunity to do so. You can gather some friends and family to sit with you and explore the night sky. Doing this is a great way to strengthen relationships, connect with nature and find some sense of identity and contemplate our place in the universe.",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 16,
//                                                 fontFamily: 'Nunito',
//                                                 height: 1.5,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: 20),
//                                   ],
//                                 ),
//                               ]),
//                         ),
//                       ),
//                     );
//                   },
//                   image: SvgPicture.asset('assets/nature.svg', height: 100),
//                 ),
//               ],
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height * .02),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class NoGlow extends ScrollBehavior {
//   Widget buildViewportChrome(
//       BuildContext context, Widget child, AxisDirection axisDirection) {
//     return child;
//   }
// }
