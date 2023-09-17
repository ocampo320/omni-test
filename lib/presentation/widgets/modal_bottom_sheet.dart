import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:omni_test/core/constants/assets_constants.dart';



class ModalBottomSheet {
  static void moreModalBottomSheet({
    required BuildContext context,
    Widget? text,
    required double maxHeightText,
    String assetName = AssetsIconsConstants.alertIcon,
    bool isDismissible = true,
    void Function()? onPressed,
    double? height,
    String? titleBtn,
    String titleBtnCancel = '',
    bool showIcon = true,
    String? title,
    bool? isTextLong = false,
    EdgeInsets paddingText = const EdgeInsets.symmetric(horizontal: 30),
  }) {
    showModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(4),
        ),
      ),
      builder: (context) {
        final controller = ScrollController();
        return WillPopScope(
          onWillPop: () async => isDismissible,
          child: SizedBox(
            height: height ?? 219,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: <Widget>[
                   const SizedBox(height: 32),
                    Column(
                      children: [
                        if (showIcon) ...[
                          SvgPicture.asset(
                            assetName,
                            width: 50,
                            height: 45,
                          ),
                         const SizedBox(height: 24),
                        ],
                      ],
                    ),
                    if (title != null && title.isNotEmpty)
                      Column(
                        children: [
                          SizedBox(
                            width: 292,
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                             
                            ),
                          ),
                         const SizedBox(height: 12),
                        ],
                      ),
                    if (text != null) ...[
                      isTextLong ?? false
                          ? SizedBox(
                              height: 75,
                              child: Scrollbar(
                                controller: controller,
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(right: 20, left: 20),
                                  constraints:
                                      BoxConstraints(maxHeight: maxHeightText),
                                  child: SingleChildScrollView(
                                    controller: controller,
                                    child: text,
                                  ),
                                ),
                              ),
                            )
                          : Scrollbar(
                              controller: controller,
                              child: Container(
                                padding: paddingText,
                                constraints:
                                    BoxConstraints(maxHeight: maxHeightText),
                                child: SingleChildScrollView(
                                  controller: controller,
                                  child: text,
                                ),
                              ),
                            ),
                    const  SizedBox(height: 24),
                    ],
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: onPressed ??
                                () =>  Navigator.pop(context),
                                    
                           
                            child: Text(
                              titleBtn??"" ,
                           
                            ),
                          ),
                        ),
                        if (titleBtnCancel.isNotEmpty) ...[
                         const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                           
                              child: Text(
                                titleBtnCancel,
                           
                              ),
                            ),
                          ),
                         const SizedBox(height: 23),
                        ] else ...[
                        const  SizedBox(height: 32),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
