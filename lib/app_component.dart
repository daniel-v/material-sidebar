import 'package:angular2/core.dart';
import 'package:material_sidenav/material_sidenav.dart';

@Component(
    selector: 'my-app',
    directives: const [MaterialSidenavComponent],
    template: '<material-sidenav></material-sidenav>')
class AppComponent {}
