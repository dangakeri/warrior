import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../consts/app_colors.dart';
import '../widgets/chakraswidget.dart';
import '../widgets/continueWidget.dart';
import 'play.dart';

class ChakraPage extends StatelessWidget {
  const ChakraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: const [
                Text(
                  'Learn Chakras',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '- win your body',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showMaterialModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                context: context,
                builder: (context) => SingleChildScrollView(
                  controller: ModalScrollController.of(context),
                  child: Container(
                    height: 700,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/muladhara.jpeg')),
                        const Text(
                          'Muladhara',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .02),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'When you find yourself feeling unsettled, overwhelmed with uncertainty, or going through major life changes, try this grounding meditation to activate your root chakra.\n   - Consider doing this meditation outside, seated on the ground to more fully connect to the earth element. If you are sitting in a chair, plant your feet firmly on the ground; you might also prefer to lie down on the floor for this one.\n    - Close your eyes and bring your awareness to the base of your spine, imagining a ruby red sphere of light illuminating the floor of your pelvis. The light might radiate down your legs to your feet, or if you are lying down, it might cover the entire area that is touching the ground beneath you.\n    - Breathe deeply. With every breath, imagine fortifying the physical foundation of your body—sending your roots deep and wide.\n    - With your inhalations, draw energy up your roots into the space just in front of your tailbone glowing red, and on your exhalations, send the energy back down and wide, into the earth beneath you.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .01),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => const PlayPage(
                                        music: 'muladhara',
                                        chakra: 'Muladhara',
                                      )),
                            );
                          },
                          child: const ContinueWidget(text: 'Start Muladhara'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: ChakrasWidget(
              text: 'Muladhara',
              subtitle: ' - Spine',
              image: Image.asset('assets/muladhara.jpeg', height: 50),
              content:
                  'Characterized by the emotions of survival\nstability, ambition, and self-sufficiency.',
              color: AppColors.grayWeb,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showMaterialModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                context: context,
                builder: (context) => SingleChildScrollView(
                  controller: ModalScrollController.of(context),
                  child: Container(
                    height: 700,
                    child: ListView(children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Svadisthana.jpeg',
                                height: 100,
                              )),
                          const Text(
                            'Svadhisthana',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              ' This meditation can help you to trust in your emotional intelligence, helping your feelings to flow through you with ease. When you feel stuck or rigid, spend some time with this sacral chakra practice to connect to your emotional center.\n    - Sit so your hips are higher than your knees and the area around your low back and hips can relax. Before you find stillness, rock your pelvis forward and backward a few times, loosening up the space around the sacral center.\n    - Floating right in the middle of your pelvic bowl—midway between your navel and your pubic bone—visualize a beautiful, vibrant setting sun as it lowers over the ocean’s horizon line. The fiery orange light permeates your inner body, and reflects off the gentle waves of the water beneath it.\n    - As you breathe, begin to imagine your breath as the ocean’s waves—inhalations pulling the waves to shore, and exhalations withdrawing the waves back into the sea. Although your body is still, your breath never stops moving, and you witness the suspension of the breath between rounds.\n    - As you meditate on the breath and the water element, picture any stuck emotional energy being washed over and through your system, clearing you from the inside out.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => const PlayPage(
                                          music: 'aura',
                                          chakra: 'Svadhisthana',
                                        )),
                              );
                            },
                            child: const ContinueWidget(
                                text: 'Start Svadhisthana'),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              );
            },
            child: ChakrasWidget(
              text: 'Svadhisthana',
              subtitle: ' - Belly',
              image: Image.asset('assets/Svadisthana.jpeg', height: 50),
              content:
                  'Its attributes include the basic need for\nsexuality,as well as creativity and\nself-worth. ',
              color: AppColors.silverChalice,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showMaterialModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                context: context,
                builder: (context) => SingleChildScrollView(
                  controller: ModalScrollController.of(context),
                  child: Container(
                    height: 700,
                    child: ListView(children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Manipura.jpeg',
                                height: 100,
                              )),
                          const Text(
                            'Manipura',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              ' When you find yourself feeling disempowered, unworthy, or insecure, bringing energy to your solar plexus can remind you of your power and strength. Draw in courage, discipline, and confidence as you connect to your warrior nature.\n    - Begin by sitting comfortably, with your spine tall and relaxed. Before getting still, bring your hands onto your belly, and massage big circles in a clockwise motion. Not only will this movement aid in proper digestive fire, but it will also soften the belly, which can often get tense when feelings of unworthiness creep in.\n   - After rubbing 7–10 circles on your belly, release your hands onto your thighs and deepen your breath. On your exhalations, gently tone your abdominal muscles, and on your inhalations, let the belly get soft and full. This pattern will help to support a subtle Ujjayi breath, which will bring some natural heat to your system from the inside out.\n   - Visualize the element of fire burning away fear, inadequacy, and feelings of being trapped by your circumstances. You can picture the flame right behind your naval and blowing the smoke out through your nose with each breath cycle. By energetically purifying your abdominal area, you are also supporting your heart’s desires, helping you to take action from a place of strength and self-confidence.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => const PlayPage(
                                          music: 'manipura',
                                          chakra: 'Manipura',
                                        )),
                              );
                            },
                            child: const ContinueWidget(text: 'Start Manipura'),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              );
            },
            child: ChakrasWidget(
              text: 'Manipura',
              subtitle: ' - Stomach',
              image: Image.asset('assets/Manipura.jpeg', height: 50),
              content:
                  'Characterized by emotions like ego, anger,\nand aggression. ',
              color: AppColors.Gainsboro,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showMaterialModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                context: context,
                builder: (context) => SingleChildScrollView(
                  controller: ModalScrollController.of(context),
                  child: Container(
                    height: 700,
                    child: ListView(children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Anahata.png',
                                height: 100,
                              )),
                          const Text(
                            'Anahata',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Try this meditation if you feel closed off, lonely, or broken-hearted. Bringing energy to your heart chakra helps you to connect to objectless and unconditional love, and will tune you into resilience, compassion, and generosity of spirit.\n    - Sit tall, with your shoulders back and your posture held proudly. Because your lungs are part of the heart chakra, it is vital that you attempt to breathe deeply during this practice.\n   - Begin by envisioning an emerald green light filling up your entire chest cavity. By fortifying this light with your attention and breath, you are strengthening the shield that protects your heart from life’s challenges and sorrows. Feed this green light so that it may help you to feel safe to love and be loved.\n    - After breathing into this space for several minutes, draw your attention to the center point of your chest—to a pink diamond that represents the spiritual heart itself. This soft and peaceful light represents the core of who you are beyond your self-perceptions. See and feel love, beauty, and goodness radiating from this heart diamond, helping you to share your light with the world. The light needs no object to shine upon; it is love itself, expressing itself as you.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => const PlayPage(
                                          music: 'anahata',
                                          chakra: 'Anahata',
                                        )),
                              );
                            },
                            child: const ContinueWidget(text: 'Start Anahata'),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              );
            },
            child: ChakrasWidget(
              text: 'Anahata',
              subtitle: ' - Heart',
              image: Image.asset('assets/Anahata.png', height: 50),
              content:
                  'Characterized by emotions of love,trust,\ncompassion, attachment,and passion. ',
              color: AppColors.platinum,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showMaterialModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                context: context,
                builder: (context) => SingleChildScrollView(
                  controller: ModalScrollController.of(context),
                  child: Container(
                    height: 700,
                    child: ListView(children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Visuddha.jpeg',
                                height: 100,
                              )),
                          const Text(
                            'Vishuddha',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'This meditation will help you to express yourself on all levels, and can support creativity, artistic expression, and living an authentic life.\n    - Gently circle your head and neck before finding stillness in a comfortable upright position. Soften your jaw, but keep your mouth closed. Let the bottom teeth part from the top teeth, and relax the skin around your lips.\n    - Bring awareness to your throat and neck, and picture a brilliant turquoise gem sitting right at the center of this area. This gem represents your authentic truth and the magic you have to share with the world. It holds the words you have to share, the stories you can tell, the art you can offer, and the music you can Play. It is also the bridge between your heart and your head. Breathe energy into this turquoise light at the center of your throat, and offer it out through your nose or mouth.\n    - Picture the blue light shining through your ears as well, helping you to listen to others and hear your inner voice. Balancing this chakra helps with all elements of communication—from writing efficient and eloquent emails, to having difficult conversations with family members, to how you present your message through paint or photography or song.\n    - As you focus your attention on your throat chakra, envision yourself using your voice for good. Let this practice help you to make a positive contribution to the world in a way that is unique and authentic for you.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => const PlayPage(
                                          music: 'visudha',
                                          chakra: 'Vishuddha',
                                        )),
                              );
                            },
                            child:
                                const ContinueWidget(text: 'Start Vishuddha'),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              );
            },
            child: ChakrasWidget(
              text: 'Vishuddha',
              subtitle: ' - Throat',
              image: Image.asset('assets/Visuddha.jpeg', height: 50),
              content:
                  'Associated with inspiration, healthy\nexpression, faith, and the ability to\ncommunicate well. ',
              color: AppColors.alibaster,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showMaterialModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                context: context,
                builder: (context) => SingleChildScrollView(
                  controller: ModalScrollController.of(context),
                  child: Container(
                    height: 700,
                    child: ListView(children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/ajna.jpeg',
                                height: 100,
                              )),
                          const Text(
                            'Ajna',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'This meditation helps with clarity of thought, expanding your vision for the future, and trusting your intuition. By regularly meditating on your third eye, you can more easily break through your limiting thought patterns, and cultivate greater wisdom and imagination.\n   - Close your eyes while sitting or lying comfortably. Turn your gaze up toward the space between your brows, bringing energy to the third eye point. While the physical eyes look outward, the third eye is said to look inward. As you bring your attention to this energetic point, envision the color indigo or deep, royal blue.\n    - Try to keep the skin around your eyes soft and relaxed. Begin to draw your awareness back from the forehead toward the mid-brain. Consider the consciousness that sees through your eyes, and see if you can catch glimpses of this inner light between your ears. As thoughts come and go, let them pass like clouds, and return the awareness to the midpoint of your brain. If it helps, press the tip of your tongue to the upper palate to stimulate the Ajna chakra from underneath it.\n   - Keep your breath smooth and steady as you breathe in and out through your nose.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => const PlayPage(
                                          music: 'ajna',
                                          chakra: 'Ajna',
                                        )),
                              );
                            },
                            child: const ContinueWidget(text: 'Start Ajna'),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              );
            },
            child: ChakrasWidget(
              text: 'Ajna',
              subtitle: ' - Eyes',
              image: Image.asset('assets/ajna.jpeg', height: 50),
              content:
                  'Its attributes are intelligence, intuition,\ninsight, and self-knowledge. ',
              color: AppColors.cultured,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showMaterialModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                context: context,
                builder: (context) => SingleChildScrollView(
                  controller: ModalScrollController.of(context),
                  child: Container(
                    height: 700,
                    child: ListView(children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Sahasrara.jpeg',
                                height: 100,
                              )),
                          const Text(
                            'Sahasrara',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'This practice can help you connect to your spiritual center or the God of your understanding. Crown chakra meditations can draw you closer to the oneness of all beings, providing an antidote to feelings of isolation, heaviness, and hopelessness. Try this practice when you are having trouble connecting to the peace, love, and meaning you desire.\n   - Sit comfortably in a position where your spine is tall and regal. Imagine your head floating like a water lily at the top of your spine. Soften your neck, jaw, eyes, and brow. You might even tap on the crown of your head a few times to stimulate and awaken the crown chakra point.\n    - At the top of your head, imagine an invisible lotus flower with a thousand petals. Invite it to open up, so that you might know yourself and the Truth more fully.\n    - Imagine a column of purple light extending from the center of the on your head up into the sky. As you inhale, the purple light moves down and into your body, and as you exhale, it moves up into the sky. See the light moving in as Divine consciousness filling you up with every breath. Each exhale becomes an offering back to Source.\n   - When it feels natural, let your awareness settle on the point at the center of the imaginary lotus, offering thanks to your higher self for revealing itself to you.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => const PlayPage(
                                            music: 'sahasharara',
                                            chakra: 'Sahasrara',
                                          )),
                                );
                              },
                              child: const ContinueWidget(
                                  text: 'Start Sahasrara')),
                        ],
                      ),
                    ]),
                  ),
                ),
              );
            },
            child: ChakrasWidget(
              text: 'Sahasrara',
              subtitle: ' - Head',
              image: Image.asset('assets/Sahasrara.jpeg', height: 50),
              content:
                  ' It is the center of spirituality,\nenlightenment, and dynamic thought\nand energy. ',
              color: AppColors.ghostWhite,
            ),
          ),
        ],
      ),
    );
  }
}