import 'package:app_flowy/generated/locale_keys.g.dart';
import 'package:app_flowy/plugins/document/presentation/plugins/base/link_to_page_widget.dart';
import 'package:appflowy_backend/protobuf/flowy-folder/view.pb.dart';
import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flowy_infra/image.dart';
import 'package:flutter/material.dart';

SelectionMenuItem gridMenuItem = SelectionMenuItem(
  name: () => LocaleKeys.grid_menuName.tr(),
  icon: (editorState, onSelected) {
    return svgWidget(
      'editor/grid',
      size: const Size.square(18.0),
      color: onSelected
          ? editorState.editorStyle.selectionMenuItemSelectedIconColor
          : editorState.editorStyle.selectionMenuItemIconColor,
    );
  },
  keywords: ['grid'],
  handler: (editorState, menuService, context) {
    showLinkToPageMenu(
      editorState,
      menuService,
      context,
      ViewLayoutTypePB.Grid,
    );
  },
);
