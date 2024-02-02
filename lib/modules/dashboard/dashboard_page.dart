import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:taski/configs/extensions/buildcontext_extensions.dart';

import 'package:taski/core/core_widgets/widget_links.dart';
import 'package:taski/modules/dashboard/widgets/note_container.dart';

// ignore: must_be_immutable
class DashBoardPage extends StatelessWidget {
  GlobalKey globalKey = GlobalKey();

  DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      // extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Column(
          children: [
            Spaces.large,
            // Spaces.large,
            // Spaces.large,
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                child: customTextWidget(
                  text: "My Notes",
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.screenHeight * 0.08,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Spaces.smallh,
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AnimatedContainerThreeD(
                        height: 12.0,
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainerThreeD(
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: customTextWidget(
                              text: "To-Do List",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainerThreeD(
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: customTextWidget(
                              text: "Work",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainerThreeD(
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: customTextWidget(
                              text: "Journal",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainerThreeD(
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: customTextWidget(
                              text: "Office Work",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainerThreeD(
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: customTextWidget(
                              text: "Kids Tasks",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spaces.smallh,
            SizedBox(
              height: context.screenHeight,
              width: context.screenWidth,
              child: GridView.custom(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverWovenGridDelegate.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  pattern: [
                    const WovenGridTile(1),
                    const WovenGridTile(
                      5 / 7,
                      crossAxisRatio: 0.98,
                      alignment: AlignmentDirectional.center,
                    ),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 7,
                  (context, index) => const NoteContainer(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
