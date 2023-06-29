import 'dart:io';

// import 'package:doctorapp/controller/blogupdatecontroller.dart';
// import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/controller/taglistController.dart';
// import 'package:multi_select_flutter/multi_select_flutter.dart';
// import 'package:multiselect/multiselect.dart';

import 'package:doctorapp/controller/blogupdatecontroller.dart';
import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/controller/taglistController.dart';
import 'package:doctorapp/view/allpackages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
// import 'package:multiselect/multiselect.dart';
// import 'package:multiselect/multiselect.dart';

// import '../../allpackages.dart';

class YourBlogEdit extends StatefulWidget {
  const YourBlogEdit({super.key});

  @override
  State<YourBlogEdit> createState() => _YourBlogEditState();
}

class _YourBlogEditState extends State<YourBlogEdit> {
  var selectindex = 0;
  List blogname = ['Dog Blog', 'Health', 'Funny Friend'];
  // var selectvalue;
  // var dummylist;
  BlogCreateController blogCreateController = Get.put(BlogCreateController());
  final _picker = ImagePicker();
  TagListController taglistcontroller = Get.put(TagListController());
  EditBlogController editBlogController = Get.put(EditBlogController());
  List<String> selected = [];

  @override
  void initState() {
    // TODO: implement initState
    taglistcontroller.tagListControllerFunction();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgcolor,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: headingtext,
          ),
        ),
        title: Text(
          'EDIT BLOG',
          style: sixteeneighthundred000958,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100.0.hp,
              width: 100.0.wp,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.png',
                ),
                fit: BoxFit.cover,
              )),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        minLeadingWidth: 60.0.wp,
                        leading: Text(
                          'Upload photo of your blog',
                          style: sixhundredtweleve,
                        ),
                        title: Row(
                          children: [
                            InkWell(
                                onTap: () async {},
                                child: Image.asset('assets/images/delete.png')),
                            SizedBox(
                              width: 1.0.wp,
                            ),
                            Text(
                              'Remove',
                              style: forminputsmall,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 30.0.hp,
                        width: 100.0.wp,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                  onTap: () async {
                                    final XFile? pickedImage = await _picker
                                        .pickImage(source: ImageSource.gallery);
                                    if (pickedImage != null) {
                                      blogCreateController
                                          .image(File(pickedImage.path));
                                    }
                                  },
                                  child: blogCreateController
                                          .image.value.path.isEmpty
                                      ? Container(
                                          height: 30.0.hp,
                                          width: 100.0.wp,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                'assets/images/viewdog.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      : Container(
                                          height: 30.0.hp,
                                          width: 100.0.wp,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: FileImage(
                                                  blogCreateController
                                                      .image.value),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                            ),
                            Positioned(
                                right: 4.0.wp,
                                top: 2.0.hp,
                                child: const CircleAvatar(
                                  backgroundColor: Color(0xffDDE7F5),
                                  radius: 14,
                                  child: Icon(
                                    Icons.close,
                                    size: 15,
                                    color: headingtext,
                                  ),
                                ))
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Text(
                        'Topic of your Blog',
                        style: sixhundredtweleve,
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Container(
                        height: 10.00.hp, width: 200.00.wp,
                        // padding: const EdgeInsets.only(
                        //   left: 20,
                        //   right: 20,
                        // ),
                        color: screenbackground,
                        child: TextFormField(
                          maxLines: 10,
                          controller: editBlogController.topic,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    color: screenbackground, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                    color: const Color(0xffC6C6C6)
                                        .withOpacity(0.5),
                                    width: 1),
                              ),
                              fillColor: const Color(0xffC6C6C6),
                              hintText:
                                  'How to Tell If your Dog Is At a Healthy Weight',
                              hintStyle: fourhundredtweleve,
                              labelStyle: const TextStyle(color: Colors.white),
                              contentPadding:
                                  const EdgeInsets.only(left: 10, top: 10),
                              border: const OutlineInputBorder(
                                gapPadding: 4,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Text(
                        'Tags(Select all that apply)',
                        style: sixhundredtweleve,
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),

                      ///TagListobx
                      Container(
                        height: 7.00.hp,
                        width: 95.00.wp,
                        // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: screenbackground,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: const Color(0xFFECE9E9),
                            width: MediaQuery.of(context).size.height * 0.001,
                          ),
                        ),
                        child: MultiSelectDropDown(
                          selectedOptionBackgroundColor: Colors.grey.shade400,
                          onOptionSelected: (options) {
                            debugPrint(options.toString());
                          },
                          options: List.generate(
                              blogname.length,
                              (index) =>
                                  ValueItem(label: blogname[index].toString())),
                          selectionType: SelectionType.multi,
                          chipConfig:
                              const ChipConfig(wrapType: WrapType.scroll),
                          dropdownHeight: 15.0.hp,
                          optionTextStyle: const TextStyle(fontSize: 16),
                          backgroundColor: Colors.white,
                          selectedOptionIcon: const Icon(Icons.check_circle),
                        ),
                      ),

                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Text(
                        'Content',
                        style: sixhundredtweleve,
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Container(
                        height: 30.00.hp, width: 200.00.wp,
                        // padding: const EdgeInsets.only(
                        //   left: 20,
                        //   right: 20,
                        // ),
                        color: screenbackground,
                        child: TextFormField(
                          controller: editBlogController.content,
                          maxLines: 20,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    color: screenbackground, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                    color: const Color(0xffC6C6C6)
                                        .withOpacity(0.5),
                                    width: 1),
                              ),
                              fillColor: const Color(0xffC6C6C6),
                              hintText:
                                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                              hintStyle: fivehundredtweleve,
                              labelStyle: const TextStyle(color: Colors.white),
                              contentPadding:
                                  const EdgeInsets.only(left: 10, top: 20),
                              border: const OutlineInputBorder(
                                gapPadding: 4,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Center(
                        child: ButtonIconButton(
                            text: 'SAVE CHANGES',
                            bordercolor: buttoncolor,
                            press: () {
                              //need blog id to edit seperate details
                              //Future.delayed(Duration.zero, () async {
                              //   await editBlogController
                              //       .editBlogcreateController(context);
                              // });
                            }),
                      ),
                      SizedBox(
                        height: 2.0.hp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Animal {
  final int? id;
  final String? name;

  Animal({
    this.id,
    this.name,
  });
}
