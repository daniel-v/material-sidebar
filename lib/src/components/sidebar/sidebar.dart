import 'package:angular2/core.dart';
import 'package:angular2_components/src/model/ui/toggle.dart';

@Component(
    selector: 'mm-sidebar',
    styleUrls: const ['sidebar.css'],
    templateUrl: 'sidebar.html',
    host: const {
      '[class.opened]': 'isOn'
    }
)
class MMSidebarComponent extends Toggleable { }