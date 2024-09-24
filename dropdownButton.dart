import 'package:dropdown_button2/dropdown_button2.dart';

// dependency dropdown_button2: ^2.3.8

class _VerifyDashboardState extends State<VerifyDashboard> {

  
  final List<String> items = [
    'Today',
    'Yesterday',
    'Tommorow',
    'last Month',
  ];
  String? selectedValue;

  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    
                                         Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, right: 5.0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2<String>(
                                              isExpanded: true,
                                              hint: Row(
                                                children: [
                                                  SizedBox(
                                                    // width: 4,
                                                    width: screenWidth * 0.02,
                                                  ),
                                                  const Expanded(
                                                    child: Text(
                                                      'Daily',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: items
                                                  .map((String item) =>
                                                      DropdownMenuItem<String>(
                                                        value: item,
                                                        child: Text(
                                                          item,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ))
                                                  .toList(),
                                              value: selectedValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedValue = value;
                                                });
                                              },
                                              buttonStyleData: ButtonStyleData(
                                                height: 35,
                                                width: 125,
                                                padding: const EdgeInsets.only(
                                                    left: 14, right: 14),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                  border: Border.all(
                                                    color: Colors.black26,
                                                  ),
                                                  color: Colors.white,
                                                  // color: Colors
                                                  //     .grey[900],
                                                ),
                                                elevation: 2,
                                              ),
                                              iconStyleData:
                                                  const IconStyleData(
                                                icon: Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                ),
                                                iconSize: 14,
                                                iconEnabledColor:
                                                    Color.fromRGBO(
                                                        97, 97, 97, 1),
                                                iconDisabledColor: Colors.grey,
                                              ),
                                              dropdownStyleData:
                                                  DropdownStyleData(
                                                maxHeight: 125,
                                                width: 145,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                  color: Colors.white,
                                                ),
                                                offset: const Offset(-20, 0),
                                                scrollbarTheme:
                                                    ScrollbarThemeData(
                                                  radius:
                                                      const Radius.circular(40),
                                                  thickness:
                                                      MaterialStateProperty.all(
                                                          6),
                                                  thumbVisibility:
                                                      MaterialStateProperty.all(
                                                          true),
                                                ),
                                              ),
                                              menuItemStyleData:
                                                  const MenuItemStyleData(
                                                height: 40,
                                                padding: EdgeInsets.only(
                                                    left: 14, right: 14),
                                              ),
                                            ),
                                          ),
                                        ),



    

    
    
    
