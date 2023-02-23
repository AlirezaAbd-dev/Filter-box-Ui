import 'package:flutter/material.dart';
import 'package:filterboxui/model/filterbox_text.dart';
import 'package:filterboxui/components/components.dart';
import 'package:filterboxui/widgets/filterbox_backbox.dart';
import 'package:filterboxui/widgets/filterbox_checkbox.dart';
import 'package:filterboxui/widgets/filterbox_textfield.dart';

class FilterBox extends StatefulWidget {
  const FilterBox({super.key});

  @override
  State<FilterBox> createState() => _FilterBoxState();
}

class _FilterBoxState extends State<FilterBox> {
  Widget? buttonStateWidget;
  var checkboxStatus1 = false;
  var checkboxStatus2 = false;
  var checkboxStatus3 = false;
  var checkboxStatus4 = false;
  var checkboxStatus5 = false;
  var checkboxStatus6 = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.width;

    return Container(
      width: deviceWidth,
      height: deviceHeight,
      decoration: const BoxDecoration(
        color: FilterBoxColors.background,
      ),
      child: Stack(
        children: <Widget>[
          const Center(
            child: FilterBoxBackBox(),
          ),
          Center(
            child: Container(
              width: 340.0,
              height: 380.0,
              decoration: BoxDecoration(
                color: FilterBoxColors.frontBox,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FilterBoxText(
                          text: 'Filter',
                          fontSize: 22.0,
                          fontWeight: FontWeight.normal,
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FilterBoxText(
                          text: 'Location',
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    width: 270.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Material(
                      color: FilterBoxColors.background,
                      borderRadius: BorderRadius.circular(5.0),
                      child: FilterBoxTextField(controller: _controller),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FilterBoxText(
                          text: 'Experience Level',
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Material(
                              color: FilterBoxColors.frontBox,
                              child: Transform.scale(
                                scale: 1.5,
                                child: FilterBoxCheckBox(
                                  value: checkboxStatus1,
                                  checkedFillColor: FilterBoxColors.background,
                                  uncheckedFillColor:
                                      FilterBoxColors.background,
                                  borderRadius: 6,
                                  borderWidth: 0.7,
                                  width: 30.0,
                                  height: 22.0,
                                  shouldShowBorder: true,
                                  checkBoxIconSize: 15.0,
                                  checkedIconColor: FilterBoxColors.boxBorder,
                                  borderColor: FilterBoxColors.boxBorder,
                                  splashRadius: 1.0,
                                  checkedIcon: Icons.check_circle_outline,
                                  uncheckedIcon: Icons.radio_button_unchecked,
                                  uncheckedIconColor:
                                      FilterBoxColors.background,
                                  onChanged: (val) {
                                    //do your stuff here
                                    setState(() {
                                      checkboxStatus1 = val;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            const FilterBoxText(
                              text: '1-2 years',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              fontColor: Colors.white,
                            ),
                            const SizedBox(width: 20.0),
                            Material(
                              color: FilterBoxColors.frontBox,
                              child: Transform.scale(
                                scale: 1.5,
                                child: FilterBoxCheckBox(
                                  value: checkboxStatus2,
                                  checkedFillColor: FilterBoxColors.background,
                                  uncheckedFillColor:
                                      FilterBoxColors.background,
                                  borderRadius: 6,
                                  borderWidth: 0.7,
                                  width: 30.0,
                                  height: 22.0,
                                  shouldShowBorder: true,
                                  checkBoxIconSize: 15.0,
                                  checkedIconColor: FilterBoxColors.boxBorder,
                                  borderColor: FilterBoxColors.boxBorder,
                                  splashRadius: 1.0,
                                  checkedIcon: Icons.check_circle_outline,
                                  uncheckedIcon: Icons.radio_button_unchecked,
                                  uncheckedIconColor:
                                      FilterBoxColors.background,
                                  onChanged: (val) {
                                    //do your stuff here
                                    setState(() {
                                      checkboxStatus2 = val;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            const FilterBoxText(
                              text: '3-5 years',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              fontColor: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Material(
                              color: FilterBoxColors.frontBox,
                              child: Transform.scale(
                                scale: 1.5,
                                child: FilterBoxCheckBox(
                                  value: checkboxStatus3,
                                  checkedFillColor: FilterBoxColors.background,
                                  uncheckedFillColor:
                                      FilterBoxColors.background,
                                  borderRadius: 6,
                                  borderWidth: 0.7,
                                  width: 30.0,
                                  height: 22.0,
                                  shouldShowBorder: true,
                                  checkBoxIconSize: 15.0,
                                  checkedIconColor: FilterBoxColors.boxBorder,
                                  borderColor: FilterBoxColors.boxBorder,
                                  splashRadius: 1.0,
                                  checkedIcon: Icons.check_circle_outline,
                                  uncheckedIcon: Icons.radio_button_unchecked,
                                  uncheckedIconColor:
                                      FilterBoxColors.background,
                                  onChanged: (val) {
                                    //do your stuff here
                                    setState(() {
                                      checkboxStatus3 = val;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            const FilterBoxText(
                              text: '6-8 years',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              fontColor: Colors.white,
                            ),
                            const SizedBox(width: 20.0),
                            Material(
                              color: FilterBoxColors.frontBox,
                              child: Transform.scale(
                                scale: 1.5,
                                child: FilterBoxCheckBox(
                                  value: checkboxStatus4,
                                  checkedFillColor: FilterBoxColors.background,
                                  uncheckedFillColor:
                                      FilterBoxColors.background,
                                  borderRadius: 6,
                                  borderWidth: 0.7,
                                  width: 30.0,
                                  height: 22.0,
                                  shouldShowBorder: true,
                                  checkBoxIconSize: 15.0,
                                  checkedIconColor: FilterBoxColors.boxBorder,
                                  borderColor: FilterBoxColors.boxBorder,
                                  splashRadius: 1.0,
                                  checkedIcon: Icons.check_circle_outline,
                                  uncheckedIcon: Icons.radio_button_unchecked,
                                  uncheckedIconColor:
                                      FilterBoxColors.background,
                                  onChanged: (val) {
                                    //do your stuff here
                                    setState(() {
                                      checkboxStatus4 = val;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            const FilterBoxText(
                              text: '9+ years',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              fontColor: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FilterBoxText(
                          text: 'Target',
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Material(
                              color: FilterBoxColors.frontBox,
                              child: Transform.scale(
                                scale: 1.5,
                                child: FilterBoxCheckBox(
                                  value: checkboxStatus5,
                                  checkedFillColor: FilterBoxColors.background,
                                  uncheckedFillColor:
                                      FilterBoxColors.background,
                                  borderRadius: 6,
                                  borderWidth: 0.7,
                                  width: 30.0,
                                  height: 22.0,
                                  shouldShowBorder: true,
                                  checkBoxIconSize: 15.0,
                                  checkedIconColor: FilterBoxColors.boxBorder,
                                  borderColor: FilterBoxColors.boxBorder,
                                  splashRadius: 1.0,
                                  checkedIcon: Icons.check_circle_outline,
                                  uncheckedIcon: Icons.radio_button_unchecked,
                                  uncheckedIconColor:
                                      FilterBoxColors.background,
                                  onChanged: (val) {
                                    //do your stuff here
                                    setState(() {
                                      checkboxStatus5 = val;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            const FilterBoxText(
                              text: 'Freelancer',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              fontColor: Colors.white,
                            ),
                            const SizedBox(width: 20.0),
                            Material(
                              color: FilterBoxColors.frontBox,
                              child: Transform.scale(
                                scale: 1.5,
                                child: FilterBoxCheckBox(
                                  value: checkboxStatus6,
                                  checkedFillColor: FilterBoxColors.background,
                                  uncheckedFillColor:
                                      FilterBoxColors.background,
                                  borderRadius: 6,
                                  borderWidth: 0.7,
                                  width: 30.0,
                                  height: 22.0,
                                  shouldShowBorder: true,
                                  checkBoxIconSize: 15.0,
                                  checkedIconColor: FilterBoxColors.boxBorder,
                                  borderColor: FilterBoxColors.boxBorder,
                                  splashRadius: 1.0,
                                  checkedIcon: Icons.check_circle_outline,
                                  uncheckedIcon: Icons.radio_button_unchecked,
                                  uncheckedIconColor:
                                      FilterBoxColors.background,
                                  onChanged: (val) {
                                    //do your stuff here
                                    setState(() {
                                      checkboxStatus6 = val;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            const FilterBoxText(
                              text: 'Agency',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              fontColor: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
