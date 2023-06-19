import 'dart:io';

import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/controller/taglistController.dart';

import '../../../allpackages.dart';
// import '../../allpackages.dart';

class YourBlogEdit extends StatefulWidget {
  const YourBlogEdit({super.key});

  @override
  State<YourBlogEdit> createState() => _YourBlogEditState();
}

class _YourBlogEditState extends State<YourBlogEdit> {
  var selectindex = 0;
  List blogname = ['Dog Blog', 'Health', 'Funny Friend'];
  var selectvalue;
  var dummylist;
  BlogCreateController blogCreateController = Get.put(BlogCreateController());
  final _picker = ImagePicker();
  TagListController taglistcontroller = Get.put(TagListController());
  @override
  void initState() {
    // TODO: implement initState
    taglistcontroller.tagListControllerFunction();
    blogCreateController.image.value = File("");
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
          'NEW BLOG',
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
                        // title: Row(
                        //   children: [
                        //     InkWell(
                        //         onTap: () async {},
                        //         child: Image.asset('assets/images/delete.png')),
                        //     SizedBox(
                        //       width: 1.0.wp,
                        //     ),
                        //     Text(
                        //       'Remove',
                        //       style: forminputsmall,
                        //     )
                        //   ],
                        // ),
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
                                    print(
                                        "image--${blogCreateController.image.value.path}");
                                    setState(() {});
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: blogCreateController
                                            .image.value.path.isEmpty
                                        ? Column(
                                            children: [
                                              SizedBox(
                                                height: 5.0.hp,
                                              ),
                                              Expanded(
                                                child: SizedBox(
                                                  height: 23.0.hp,
                                                  width: 23.0.wp,
                                                  child: Image.asset(
                                                    'assets/images/uploaddocphoto.png',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0.hp,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Click to Upload",
                                                  style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0.hp,
                                              ),
                                            ],
                                          )
                                        // Container(
                                        //     height: 30.0.hp,
                                        //     width: 100.0.wp,
                                        //     decoration: BoxDecoration(
                                        //       borderRadius:
                                        //           BorderRadius.circular(10),
                                        //       image: const DecorationImage(
                                        //         image: AssetImage(
                                        //           'assets/images/viewdog.png',
                                        //         ),
                                        //         fit: BoxFit.cover,
                                        //       ),
                                        //     ),
                                        //   )
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
                                          ),
                                  )),
                            ),
                            Visibility(
                              visible:
                                  blogCreateController.image.value.path.isEmpty
                                      ? false
                                      : true,
                              child: Positioned(
                                  right: 4.0.wp,
                                  top: 2.0.hp,
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xffDDE7F5),
                                    radius: 14,
                                    child: IconButton(
                                      onPressed: () async {
                                        final XFile? pickedImage =
                                            await _picker.pickImage(
                                                source: ImageSource.gallery);
                                        if (pickedImage != null) {
                                          blogCreateController
                                              .image(File(pickedImage.path));
                                        }
                                        setState(() {});
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 12,
                                      ),
                                      color: headingtext,
                                    ),
                                  )),
                            )
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
                          controller: blogCreateController.topic,
                          maxLines: 10,
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
                              fillColor: Color(0xff6F6F6F),
                              hintText: 'Type Here...',
                              hintStyle: fourhundredtweleve.copyWith(
                                  color: Color(0xff6F6F6F)),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: screenbackground,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: const Color(0xFFECE9E9),
                              width: MediaQuery.of(context).size.height * 0.001,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectvalue,
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 10.00.sp,
                                      color: forminputcolor,
                                      fontWeight: FontWeight.w500)),
                              hint: Text('Select your options',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 10.00.sp,
                                          color: formhintcolor,
                                          fontWeight: FontWeight.w500))),
                              onChanged: (String? newValue) async {
                                setState(() {
                                  selectvalue = newValue;
                                });
                              },
                              icon: const Icon(Icons.arrow_drop_down_outlined),
                              items: blogname
                                  .map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value.toString(),
                                  child: Container(
                                      height: 5.0.hp,
                                      width: 35.0.wp,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(color: appcolor)),
                                      margin: const EdgeInsets.only(
                                          left: 0, right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(value,
                                              style: GoogleFonts.jost(
                                                  textStyle: TextStyle(
                                                      fontSize: 10.00.sp,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400))),
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.close,
                                              size: 15,
                                            ),
                                          )
                                        ],
                                      )),
                                );
                              }).toList(),
                            ),
                          )),
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
                          controller: blogCreateController.content,
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
                              hintText: "Type Here...",
                              hintStyle: fivehundredtweleve.copyWith(
                                  color: Color(0xff6F6F6F)),
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
                            text: 'POST',
                            bordercolor: buttoncolor,
                            press: () {
                              // blogCreateController.popup(context);
                              Future.delayed(Duration.zero, () async {
                                await blogCreateController
                                    .blogcreateController(context);
                              });
                              // print("asfsaf");
                              // Get.back();
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
