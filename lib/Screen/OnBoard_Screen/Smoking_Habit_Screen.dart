import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/Custom_Top_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmokinghabitScreen extends StatefulWidget {
  const SmokinghabitScreen({super.key});

  @override
  State<SmokinghabitScreen> createState() => _SmokinghabitScreenState();
}

class _SmokinghabitScreenState extends State<SmokinghabitScreen> {
  final TextEditingController _cigarettesController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  String _selectedCurrency = 'INR'; // Default currency

  final List<String> _currencyList = [
    'USD',
    'EUR',
    'INR',
    'GBP',
    'JPY',
    'CAD',
    'AUD'
  ];

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose(); // Dispose the focus node when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30.0.h, 45, 30.0.h, 1.0.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 45.h, bottom: 30.h),
                    child: const CustomTopRow(
                      textValue: 'Enter Your Smoking Habits',
                    ),
                  ),
                  SizedBox(height: 30.h),

                  // Number of Cigarettes Input
                  Text(
                    "How many cigarettes do you smoke in a day?",
                    style: TextStyle(
                      fontSize: 50.sp,
                      color: textColorQ,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    controller: _cigarettesController,
                    decoration: InputDecoration(
                      fillColor: fieldBgColor,
                      filled: true,
                      hintText: 'Enter number of cigarettes',
                      hintStyle: TextStyle(color: fieldTextColor),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        borderSide:
                            BorderSide(color: fieldTextColor, width: 2.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),

                  // Price of a Cigarette Input with Currency Dropdown
                  Text(
                    "What is the price of one cigarette?",
                    style: TextStyle(
                      fontSize: 50.sp,
                      color: textColorQ,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: fieldBgColor,
                      borderRadius: BorderRadius.circular(50.r),
                      border: Border.all(
                        color: _isFocused
                            ? fieldTextColor
                            : const Color.fromARGB(255, 255, 255, 255),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        DropdownButton<String>(
                          value: _selectedCurrency,
                          dropdownColor: fieldBgColor,
                          style: TextStyle(
                            color: fieldTextColor,
                            fontSize: 50.sp,
                          ),
                          underline: SizedBox(),
                          items: _currencyList
                              .map(
                                (currency) => DropdownMenuItem(
                                  value: currency,
                                  child: Text(currency),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedCurrency = value!;
                            });
                          },
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: TextField(
                            controller: _priceController,
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            focusNode: _focusNode,
                            style: TextStyle(
                                fontSize: 50.sp, color: textcolorblue),
                            decoration: InputDecoration(
                              hintText: "Enter price",
                              hintStyle: TextStyle(
                                color: textcolorblue,
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 10.h),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40.h),

                  // Submit Button
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        final numCigarettes = _cigarettesController.text;
                        final price = _priceController.text;

                        if (numCigarettes.isEmpty || price.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text("Please fill out all fields")),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavBarScreen(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        width: 500.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          color: buttonBgColor,
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: 50.sp,
                              color: Colors.white,
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
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Next Page",
          style: TextStyle(fontSize: 50.sp),
        ),
      ),
    );
  }
}
