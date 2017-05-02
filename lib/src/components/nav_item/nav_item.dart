import 'package:angular2/core.dart';

import '../toolbar_item/toolbar_item.dart';
import 'package:angular2_components/src/components/button_decorator/button_decorator.dart';
import 'package:angular2_components/src/components/material_button/material_button.dart';
import 'package:angular2_components/src/components/material_button/material_button_base.dart';
import 'package:angular2_components/src/components/material_ripple/material_ripple.dart';

/// Component compositing [MMToolbarItemComponent] and [MaterialButtonBase]
///
/// A Toolbar item that is also a button. Only a small subset of Material
/// Buttons features are exposed.
///
/// __Example usage:__
///     <mm-nav-item [link]="'http://google.com'">Nav text</mm-nav-item>
///     <mm-nav-item [icon]="'home'">Nav item with icon</mm-nav-item>
///     <mm-nav-item [icon]="'home'" (trigger)="doSomething()">Event</mm-nav-item>
///
/// __Properties:__
/// - `link: String` -- link to navigate to it when clicked
/// - `icon: String` -- icon name to display
///
/// __Events:__
/// - `trigger: Event` -- Published when the nav item is activated with click
///   or keypress.
///
/// __Attributes:__
/// - `textOnly` -- If present, `icon` will be ignored and it's place removed
@Component(
    selector: 'mm-nav-item',
    templateUrl: 'nav_item.html',
    styleUrls: const ['nav_item.css'],
    directives: const [
      MMToolbarItemComponent,
      MaterialRippleComponent,
    ],
    inputs: const ['link', 'icon'],
    changeDetection: ChangeDetectionStrategy.OnPush,
    providers: const [const Provider(ButtonDirective, useExisting: MMNavItemComponent)],
    preserveWhitespace: false
)
class MMNavItemComponent extends MaterialButtonBase {
  // fixme: (trigger) is missing
  // fixme: textOnly is missing - introduce common baseClass/mixin

  /// Link to navigate to
  /// Defaults to '#'
  String link = '#';

  /// Glyph name to use as icon
  String icon;

  final ChangeDetectorRef _changeDetector;

  @override
  void focusedStateChanged() {
    _changeDetector.markForCheck();
  }

  MMNavItemComponent(ElementRef element, this._changeDetector) : super(element);

}