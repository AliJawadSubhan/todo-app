import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:popover/popover.dart';
import 'package:taski/configs/constants/color_constants.dart';
// import 'package:taski/configs/extensions/buildcontext_extensions.dart';
import 'package:taski/core/core_widgets/widget_links.dart';

class NoteContainer extends StatelessWidget {
  const NoteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // debugPrint("REBUILD");
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        5,
        4,
        12,
        3,
      ),
      child: SizedBox(
        // height: context.screenHeight * 0.23,
        // width: context.screenWidth * 0.45,
        child: AnimatedContainerThreeD(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spaces.smallh,
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customTextWidget(
                      text: "Family and Friends",
                    ),
                    Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () async {
                          showPopover(
                            width: 200,
                            arrowHeight: 15,
                            arrowWidth: 30,
                            context: context,
                            bodyBuilder: (context) => Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading:
                                      const Icon(FontAwesome.thumbtack_solid),
                                  title: customTextWidget(text: 'Pin'),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(EvaIcons.edit_outline),
                                  title: customTextWidget(text: 'Edit'),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(EvaIcons.trash_2_outline),
                                  title: customTextWidget(text: 'Delete'),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.more_horiz_rounded,
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.grey,
                              ),
                              Spaces.extrasmallw,
                              Flexible(
                                child: customTextWidget(
                                  text: "Throw a birthday Party.",
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 12,
                                backgroundColor:
                                    ColorConstants.primaryPastelBlue,
                                child: Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Icon(
                                    Icons.check,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Spaces.extrasmallw,
                              Flexible(
                                child: customTextWidget(
                                  text: "Throw a birthday Party.",
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.grey,
                              ),
                              Spaces.extrasmallw,
                              Flexible(
                                child: customTextWidget(
                                  text: "Throw a birthday Party.",
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 12.0),
                  child: customTextWidget(text: "Sat, 12, 2021", fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
