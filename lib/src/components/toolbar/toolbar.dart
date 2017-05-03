import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';

import 'package:angular2_components/src/components/glyph/glyph.dart';
import 'package:angular2_components/src/components/material_button/material_button.dart';

/// Toolbar
///
/// __Events:__
/// - `navToggle: MouseEvent` -- triggered when nav button is pressed
///
/// __Properties:__
/// - `showNavToggle: bool` -- whether to display nav toggle. Defaults to true.
@Component(
    selector: 'mm-toolbar',
    templateUrl: 'toolbar.html',
    styleUrls: const ['toolbar.css'],
    exportAs: 'mmToolbar',
    inputs: const ['showNavToggle'],
    outputs: const ['navToggle'],
    directives: const [
      MaterialButtonComponent,
      GlyphComponent
    ]
)
class MMToolbarComponent implements OnDestroy {

  StreamController _navToggleController = new StreamController<MouseEvent>.broadcast();

  Stream get navToggle => _navToggleController.stream;

  bool showNavToggle = true;

  void toggleNav(MouseEvent ev) {
    _navToggleController.add(ev);
  }

  @override
  ngOnDestroy() {
    _navToggleController.close();
  }
}