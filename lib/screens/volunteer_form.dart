import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:harv/constants/utils.dart';
import 'package:harv/widgets/custom_button.dart';
import 'package:harv/widgets/custom_textfield.dart';

class VolunteerForm extends StatefulWidget {
  const VolunteerForm({super.key});
  static const String routeName = '/volunteer-form';
  @override
  State<VolunteerForm> createState() => _VolunteerFormState();
}

class _VolunteerFormState extends State<VolunteerForm> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  String category = 'Rose';
  List<File> images = [];
  final _addProductFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    productNameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    quantityController.dispose();
  }

  List<String> plantCategories = [
    'Rose',
    'Bamboo',
    'Tulip',
    'Emrald',
    'Ruby',
  ];

  void selectImages() async {
    var res = await pickImages();
    setState(() {
      images = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(),
          ),
          title: const Text(
            "Plant a Sapling",
            style: TextStyle(
              color: Color(0xff404040),
              fontSize: 24,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
            ),
          )),
      body: SingleChildScrollView(
        child: Form(
          key: _addProductFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                images.isNotEmpty
                    ? CarouselSlider(
                        items: images.map((i) {
                          return Builder(
                              builder: (BuildContext context) => Image.file(
                                    i,
                                    fit: BoxFit.cover,
                                    height: 200,
                                  ));
                        }).toList(),
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: 200,
                        ),
                      )
                    : GestureDetector(
                        onTap: selectImages,
                        child: DottedBorder(
                          color: Color.fromRGBO(83, 83, 83, 1),
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          dashPattern: const [10, 4],
                          strokeCap: StrokeCap.round,
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.upload,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Upload Images",
                                  style: TextStyle(
                                    color: Color(0xff404040),
                                    fontSize: 16,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    controller: productNameController,
                    hintText: 'Name of Plant'),
                const SizedBox(
                  height: 10,
                ),
                // CustomTextField(
                //     controller: productNameController,
                //     hintText: 'Type of Plant'),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton(
                    value: category,
                    elevation: 0,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: plantCategories.map((String item) {
                      return DropdownMenuItem(value: item, child: Text(item));
                    }).toList(),
                    onChanged: (String? newVal) {
                      setState(() {
                        category = newVal!;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: CustomTextField(
                          controller: productNameController,
                          hintText: 'Number of Plant'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 180,
                      child: CustomTextField(
                          controller: productNameController,
                          hintText: 'Location'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  controller: descriptionController,
                  hintText: 'Description',
                  maxLines: 7,
                ),
                const SizedBox(
                  height: 10,
                ),

                SizedBox(height: 10),
                CustomButton(text: 'Submit', onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
