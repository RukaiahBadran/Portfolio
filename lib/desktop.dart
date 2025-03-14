
import 'package:nakul_dev/Data/education.dart';
import 'package:nakul_dev/Data/exp.dart';
import 'package:nakul_dev/Data/profilePic_book.dart';
import 'package:nakul_dev/functions/Custom_backdrop_filter.dart';
import 'package:nakul_dev/functions/downloadResume.dart';
import 'package:nakul_dev/functions/notifySnackBar.dart';


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'styles/styles.dart';

class desktop extends StatefulWidget {
  const desktop({super.key});

  @override
  State<desktop> createState() => _desktopState();
}

class _desktopState extends State<desktop> {
  // double pixelValue = 300;

  @override
  Widget build(BuildContext context) {
    double isdeviceWidth = MediaQuery.of(context).size.width;
    // double isdeviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    double deviceHeight = 729.5;
    // print(isdeviceHeight);

    String rurl = 'https://github.com/RukaiahBadran/CV/blob/main/CV.pdf';

    return Center(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: SizedBox(
                    width: deviceWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                             //About
                            //
                            SizedBox(
                              height: 500.0,
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: CustomBox(
                      
                                    hoverColor: ResumeColor,
                                    margin: containerStyle.margin,
                                    borderRadius: containerStyle.borderRadius,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: containerStyle.color,
                                        borderRadius: containerStyle.borderRadius,
                                      ),
                                      padding: containerStyle.padding,
                                      // margin: containerStyle.margin,
                                      width: deviceWidth * 0.60,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 120.0,
                                            width: 120.0,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                              image: AssetImage(profilepic),
                                              fit: BoxFit.fill,
                                            ),
                                              shape: BoxShape.circle,
                                          ),
                                        ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Expanded(
                                                child: AutoSizeText.rich(
                                                  maxFontSize: 23,
                                                  minFontSize: 5,
                                                  maxLines: 1,
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'About ',
                                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                      ),
                                                      TextSpan(
                                                        text: 'Me',
                                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          
                                          AutoSizeText(
                                            minFontSize: 10,
                                            maxFontSize: 15,
                                            maxLines: 10,
                                            style: GoogleFonts.chakraPetch(textStyle: textStyles.P1),
                                            "Computer engineer with a strong foundation in problem-solving and software development. Committed to building efficient, reliable solutions and continuously expanding my skills to stay current with evolving technologies.",
                                          ),
                                // Resume
                            
                            SizedBox(
                              height: 112.3,
                              child: GestureDetector(
                                onTap: () {
                                  downloadResume(rurl);
                                  notifySnackBar(context, "My Resume Will Be Downloaded Shortly");
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: CustomBox(
                                    // color: containerStyle.colorR,
                                    hoverColor: const Color.fromARGB(255, 255, 255, 255),
                                    isHover: true,
                                    borderRadius: containerStyle.borderRadius,
                                    margin: containerStyle.margin,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: containerStyle.colorR,
                                        borderRadius: containerStyle.borderRadius,
                                      ),
                                      padding: containerStyle.padding,
                                      // margin: containerStyle.margin,
                                      width: deviceWidth * containerStyle.width,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            color: textStyles.B.color,
                                            Icons.download_rounded,
                                            size: deviceWidth * 0.014,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: AutoSizeText.rich(
                                                  maxFontSize: 23,
                                                  minFontSize: 5,
                                                  maxLines: 1,
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "My ",
                                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB, color: Colors.black),
                                                      ),
                                                      TextSpan(
                                                        text: "Resume",
                                                        style: GoogleFonts.chakraPetch(
                                                          textStyle: textStyles.HeadingI,
                                                          color: Colors.black,
                                                          // backgroundColor: const Color.fromARGB(255, 119, 119, 119)
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ), 
                              ),
                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              
                            ),

                        //     // //Contact Me
                        //     // //
                        //     // RepaintBoundary(
                        //     //     child: SizedBox(
                        //     //   height: 240.5,
                        //     //   child: GestureDetector(
                        //     //     onTap: () {
                        //     //       navigateTo(context, const toResponsiveLayout_contactMe());
                        //     //     },
                        //     //     child: MouseRegion(
                        //     //       cursor: SystemMouseCursors.click,
                        //     //       child: CustomBox(
                        //     //         isHover: true,
                        //     //         hoverColor: ResumeColor,
                        //     //         borderRadius: containerStyle.borderRadius,
                        //     //         margin: containerStyle.margin,
                        //     //         child: Container(
                        //     //           decoration: BoxDecoration(
                        //     //             color: containerStyle.color,
                        //     //             borderRadius: containerStyle.borderRadius,
                        //     //           ),
                        //     //           padding: containerStyle.padding,
                        //     //           // margin: containerStyle.margin,
                        //     //           width: deviceWidth * containerStyle.width,
                        //     //           child: Column(
                        //     //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     //             crossAxisAlignment: CrossAxisAlignment.end,
                        //     //             children: [
                        //     //               Row(
                        //     //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     //                 children: [
                        //     //                   Expanded(
                        //     //                     child: AutoSizeText(
                        //     //                       "Have some\nQuestions?",
                        //     //                       maxLines: 3,
                        //     //                       maxFontSize: 15,
                        //     //                       minFontSize: 10,
                        //     //                       style: GoogleFonts.chakraPetch(textStyle: textStyles.P1),
                        //     //                     ),
                        //     //                   ),
                        //     //                   Icon(
                        //     //                     color: IconHClr,
                        //     //                     Icons.arrow_outward_rounded,
                        //     //                     size: deviceWidth * 0.014,
                        //     //                   ),
                        //     //                 ],
                        //     //               ),
                        //     //               Row(
                        //     //                 children: [
                        //     //                   Expanded(
                        //     //                     child: AutoSizeText.rich(
                        //     //                       maxFontSize: 23,
                        //     //                       minFontSize: 5,
                        //     //                       maxLines: 1,
                        //     //                       TextSpan(
                        //     //                         children: [
                        //     //                           TextSpan(
                        //     //                             text: 'Contact ',
                        //     //                             style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                        //     //                           ),
                        //     //                           TextSpan(
                        //     //                             text: 'Me',
                        //     //                             style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                        //     //                           )
                        //     //                         ],
                        //     //                       ),
                        //     //                     ),
                        //     //                   ),
                        //     //                 ],
                        //     //               ),
                        //     //             ],
                        //     //           ),
                        //     //         ),
                        //     //       ),
                        //     //     ),
                        //     //   ),
                        //     // )
                        //     //     // .animate().fadeIn().move(begin: const Offset(0, 50)).effect(curve: Easing.emphasizedDecelerate),
                        //     //     ),
                        //     //

                        //   ],
                        // ),
                        // Column(
                        //   children: [
                        //     //
                        //     //Name
                        //     //
                        //     // RepaintBoundary(
                        //     //     child: SizedBox(
                        //     //   height: 96.3,
                        //     //   child: CustomBox(
                        //     //     borderRadius: containerStyle.borderRadius,
                        //     //     margin: containerStyle.margin,
                        //     //     child: Container(
                        //     //       decoration: BoxDecoration(
                        //     //         color: containerStyle.color,
                        //     //         borderRadius: containerStyle.borderRadius,
                        //     //       ),
                        //     //       padding: containerStyle.padding,
                        //     //       // margin: containerStyle.margin,
                        //     //       width: deviceWidth * containerStyle.width,
                        //     //       child: Center(
                        //     //         child: FittedBox(
                        //     //           fit: BoxFit.scaleDown,
                        //     //           child: RichText(
                        //     //               text: TextSpan(children: [
                        //     //             TextSpan(text: "Nakul", style: GoogleFonts.chakraPetch(textStyle: textStyles.Name1)),
                        //     //             TextSpan(text: "</Dev>", style: GoogleFonts.chakraPetch(textStyle: textStyles.Name2)),
                        //     //           ])),
                        //     //         ),
                        //     //       ),
                        //     //     ),
                        //     //   ),
                        //     // )
                        //     //     // .animate().fadeIn().move(begin: const Offset(0, -50)
                        //     //     //     //animation here
                        //     //     //     ),
                        //     //     ),
                        //     //Animation here (Experimental),
                        //     // //
                        //     // //Pfp
                        //     // //
                        //     // RepaintBoundary(
                        //     //     child: SizedBox(
                        //     //   height: 400.8,
                        //     //   child: CustomBox(
                        //     //     borderRadius: containerStyle.borderRadius,
                        //     //     margin: containerStyle.margin,
                        //     //     child: Container(
                        //     //       decoration: BoxDecoration(
                        //     //         color: containerStyle.color,
                        //     //         borderRadius: containerStyle.borderRadius,
                        //     //         image: const DecorationImage(
                        //     //           image: AssetImage(profilepic), 
                        //     //         ),
                        //     //       ),
                        //     //       padding: containerStyle.padding,
                        //     //       // margin: containerStyle.margin,
                        //     //       width: deviceWidth * 0.60,
                        //     //       child: Column(
                        //     //         mainAxisAlignment: MainAxisAlignment.start,
                        //     //         crossAxisAlignment: CrossAxisAlignment.end,
                        //     //         children: [
                        //     //           Icon(
                        //     //             color: textStyles.B.color,
                        //     //             Icons.verified_rounded,
                        //     //             size: deviceWidth * 0.014,
                        //     //           ),
                        //     //         ],
                        //     //       ),
                        //     //     ),
                        //     //   ),
                        //     // )
                        //     //     // .animate().fadeIn(),
                        //     //     ),
                            
                        //   ],
                        // ),
                        // Column(
                        //   children: [
                        //     //
                        //     //Project
                        //     //
                        //     SizedBox(
                        //       height: 378.6,
                        //       child: CustomBox(
                        //         isHover: true,
                        //         hoverColor: ResumeColor,
                        //         borderRadius: containerStyle.borderRadius,
                        //         margin: containerStyle.margin,
                        //         child: Container(
                        //           decoration: BoxDecoration(
                        //             color: containerStyle.color,
                        //             borderRadius: containerStyle.borderRadius,
                        //           ),
                        //           padding: containerStyle.paddingNew,
                        //           // margin: containerStyle.margin,
                        //           width: deviceWidth * containerStyle.width,
                        //           child: Column(
                        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               GestureDetector(
                        //                 onTap: () {
                        //                   navigateTo(
                        //                       context,
                        //                       const toResponsiveLayout_project(
                        //                         initialIndex: 0,
                        //                       ));
                        //                 },
                        //                 child: MouseRegion(
                        //                   cursor: SystemMouseCursors.click,
                        //                   child: Row(
                        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //                     crossAxisAlignment: CrossAxisAlignment.start,
                        //                     children: [
                        //                       Expanded(
                        //                         child: AutoSizeText.rich(
                        //                           maxFontSize: 23,
                        //                           minFontSize: 5,
                        //                           maxLines: 1,
                        //                           TextSpan(
                        //                             children: [
                        //                               TextSpan(
                        //                                 text: 'My ',
                        //                                 style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                        //                               ),
                        //                               TextSpan(
                        //                                 text: 'Projects',
                        //                                 style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                        //                               )
                        //                             ],
                        //                           ),
                        //                         ),
                        //                       ),
                        //                       Icon(
                        //                         color: IconHClr,
                        //                         Icons.arrow_outward_rounded,
                        //                         size: deviceWidth * 0.014,
                        //                       )
                        //                     ],
                        //                   ),
                        //                 ),
                        //               ),

                        //               ///padding box
                        //               SizedBox(
                        //                 height: deviceHeight * 0.015,
                        //               ),
                        //               ////
                        //               Expanded(
                        //                   child: ScrollConfiguration(
                        //                 behavior: const ScrollBehavior().copyWith(scrollbars: false),
                        //                 child: ListView.builder(
                        //                     itemCount: projects.length,
                        //                     itemBuilder: (context, index) {
                        //                       return GestureDetector(
                        //                         onTap: () {
                        //                           navigateTo(context, toResponsiveLayout_project(initialIndex: index));
                        //                         },
                        //                         child: MouseRegion(
                        //                           cursor: SystemMouseCursors.click,
                        //                           child: Container(
                        //                             decoration: BoxDecoration(
                        //                               color: ProjectcontainerStyle.color,
                        //                               borderRadius: EducationcontainerStyle.borderRadius,
                        //                             ),
                        //                             padding: ProjectcontainerStyle.padding,
                        //                             margin: ProjectcontainerStyle.margin,
                        //                             child: Row(
                        //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //                               children: [
                        //                                 Row(
                        //                                   children: [
                        //                                     Padding(
                        //                                       padding: const EdgeInsets.only(right: 8.0),
                        //                                       child: Icon(
                        //                                         color: textStyles.B.color,
                        //                                         projects[index].icon,
                        //                                         size: deviceWidth * 0.014,
                        //                                       ),
                        //                                     ),
                        //                                     SizedBox(
                        //                                       width: deviceWidth * 0.115,
                        //                                       child: AutoSizeText(minFontSize: 5, maxFontSize: 15, maxLines: 1, style: GoogleFonts.chakraPetch(textStyle: textStyles.P2B), overflow: TextOverflow.ellipsis, projects[index].title),
                        //                                     ),
                        //                                   ],
                        //                                 ),
                        //                                 Icon(
                        //                                   color: textStyles.B.color,
                        //                                   Icons.arrow_forward_ios_rounded,
                        //                                   size: deviceWidth * 0.014,
                        //                                 )
                        //                               ],
                        //                             ),
                        //                           ),
                        //                         ),
                        //                       );
                        //                     }),
                        //               ))
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                           
                        //   ],
                        // ),
                        Column(
                          children: [
                            //
                            //Exp
                            //
                            SizedBox(
                              height: 200.4,
                              child: CustomBox(
                                borderRadius: containerStyle.borderRadius,
                                margin: containerStyle.margin,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: containerStyle.color,
                                    borderRadius: containerStyle.borderRadius,
                                  ),
                                  padding: containerStyle.paddingNew,
                                  // margin: containerStyle.margin,
                                  width: deviceWidth * containerStyle.width,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText.rich(
                                              maxFontSize: 23,
                                              minFontSize: 5,
                                              maxLines: 1,
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'My ',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                  ),
                                                  TextSpan(
                                                    text: 'Experience',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            color: textStyles.B.color,
                                            Icons.work_history_rounded,
                                            size: deviceWidth * 0.014,
                                          )
                                        ],
                                      ),

                                      ///padding box
                                      SizedBox(
                                        height: deviceHeight * 0.015,
                                      ),
                                      ////
                                      Expanded(
                                        child: ScrollConfiguration(
                                          behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                          child: ListView.builder(
                                            itemCount: Experiences.length,
                                            itemBuilder: (context, index) {
                                              return TimelineTile(
                                                isFirst: Experiences[index].start,
                                                isLast: Experiences[index].end,
                                                afterLineStyle: LineStyle(
                                                  thickness: 2,
                                                  color: EducationcontainerStyle.color,
                                                ),
                                                beforeLineStyle: LineStyle(
                                                  thickness: 2,
                                                  color: EducationcontainerStyle.color,
                                                ),
                                                indicatorStyle: IndicatorStyle(
                                                  color: EducationcontainerStyle.color,
                                                  iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_right_rounded),
                                                ),
                                                alignment: TimelineAlign.start,
                                                endChild: Expanded(
                                                  child: Container(
                                                    padding: EducationcontainerStyle.padding,
                                                    margin: EducationcontainerStyle.margin,
                                                    decoration: BoxDecoration(
                                                      color: EducationcontainerStyle.color,
                                                      borderRadius: EducationcontainerStyle.borderRadius,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            Experiences[index].role,
                                                            style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_H_B),
                                                          ),
                                                        ),
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                Experiences[index].startTime,
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                              ),
                                                              Text(
                                                                ' - ',
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                              ),
                                                              Text(
                                                                Experiences[index].endTime,
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                              ),
                                                              Text(
                                                                ' • ',
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                              ),
                                                              Text(
                                                                Experiences[index].duration,
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            SizedBox(
                                                              // color: Colors.amber,
                                                              width: deviceWidth * 0.1,
                                                              child: Text(
                                                                Experiences[index].companyName,
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //
                            //Edu
                            //
                            SizedBox(
                              height: 423.2,
                              child: CustomBox(
                                borderRadius: containerStyle.borderRadius,
                                margin: containerStyle.margin,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: containerStyle.color,
                                    borderRadius: containerStyle.borderRadius,
                                  ),
                                  padding: containerStyle.paddingNew,
                                  // margin: containerStyle.margin,
                                  width: deviceWidth * containerStyle.width,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText.rich(
                                              maxFontSize: 23,
                                              minFontSize: 5,
                                              maxLines: 1,
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'My ',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                  ),
                                                  TextSpan(
                                                    text: 'Education',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            color: textStyles.B.color,
                                            Icons.school_rounded,
                                            size: deviceWidth * 0.014,
                                          )
                                        ],
                                      ),

                                      ///padding box
                                      SizedBox(
                                        height: deviceHeight * 0.015,
                                      ),
                                      ////
                                      Expanded(
                                        child: ScrollConfiguration(
                                          behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                          child: ListView.builder(
                                            itemCount: educations.length,
                                            itemBuilder: (context, index) {
                                              return TimelineTile(
                                                isFirst: educations[index].start,
                                                isLast: educations[index].end,
                                                afterLineStyle: LineStyle(
                                                  thickness: 2,
                                                  color: EducationcontainerStyle.color,
                                                ),
                                                beforeLineStyle: LineStyle(
                                                  thickness: 2,
                                                  color: EducationcontainerStyle.color,
                                                ),
                                                indicatorStyle: IndicatorStyle(
                                                  color: EducationcontainerStyle.color,
                                                  iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_right_rounded),
                                                ),
                                                alignment: TimelineAlign.start,
                                                endChild: Expanded(
                                                  flex: 5,
                                                  child: Container(
                                                    padding: EducationcontainerStyle.padding,
                                                    margin: EducationcontainerStyle.margin,
                                                    decoration: BoxDecoration(
                                                      color: EducationcontainerStyle.color,
                                                      borderRadius: EducationcontainerStyle.borderRadius,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            educations[index].institutionName,
                                                            style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_H_B),
                                                          ),
                                                        ),
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                educations[index].startTime,
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                              ),
                                                              const Text(" - "),
                                                              Text(
                                                                educations[index].endTime,
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        educations[index].department != ''
                                                            ? FittedBox(
                                                                fit: BoxFit.scaleDown,
                                                                child: Text(
                                                                  educations[index].department,
                                                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                                                ),
                                                              )
                                                            : const Offstage(),
                                                        educations[index].grade != ''
                                                            ? FittedBox(
                                                                fit: BoxFit.scaleDown,
                                                                child: Text(
                                                                  educations[index].grade,
                                                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                                                ),
                                                              )
                                                            : const Offstage(),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
