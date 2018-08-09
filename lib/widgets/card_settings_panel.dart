// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// This is the card wrapper that all the field controls are placed into
class CardSettings extends InheritedWidget {
  CardSettings({
    Key key,
    this.labelAlign,
    this.labelPadding,
    this.labelSuffix,
    this.contentAlign: TextAlign.left,
    this.children,
  }) : super(
          key: key,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(12.0),
            child: Card(
              elevation: 5.0,
              child: Column(
                children: children,
              ),
            ),
          ),
        );

  final List<Widget> children;
  final TextAlign labelAlign;
  final double labelPadding;
  final String labelSuffix;
  final TextAlign contentAlign;

  static CardSettings of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CardSettings);
  }

  @override
  bool updateShouldNotify(CardSettings old) {
    if (labelAlign != old.labelAlign) return true;
    if (labelPadding != old.labelPadding) return true;
    if (labelSuffix != old.labelSuffix) return true;
    if (contentAlign != old.contentAlign) return true;
    return false;
  }
}