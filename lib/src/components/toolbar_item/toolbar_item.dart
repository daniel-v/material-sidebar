import 'package:angular2/core.dart';
import 'package:angular2_components/src/components/glyph/glyph.dart';
import '../../util/attributes.dart' as attrib;

/// Toolbar Item
///
/// __Example usage:__
///     <mm-toolbar-item>No icon, with icon placeholder</mm-toolbar-item>
///     <mm-toolbar-item [icon]="'home'">Will have icon</mm-toolbar-item>
///     <mm-toolbar-item textOnly>No icon, without icon placeholder</mm-toolbar-item>
///
/// __Properties:__
///
/// - `icon` -- Optional icon to display next to display text, leaving it's place as placeholder
///
/// __Attributes:__
///
/// - `textOnly` -- If present, `icon` will be ignored and it's place removed
@Component(
    selector: 'mm-toolbar-item',
    templateUrl: 'toolbar_item.html',
    styleUrls: const ['toolbar_item.css'],
    changeDetection: ChangeDetectionStrategy.OnPush,
    inputs: const ['icon', 'textOnly'],
    directives: const [GlyphComponent],
    host: const {
      '[attr.textOnly]': 'textOnly',
    })
class MMToolbarItemComponent extends Object with TextOnlyMixin {
  String icon;
}

abstract class TextOnlyMixin {
  var textOnly;
  bool get isTextOnly => attrib.isPresent(textOnly);
}
