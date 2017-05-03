import 'package:angular2/platform/browser.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:angular2/core.dart';
import 'package:material_sidenav/src/components/nav_item/nav_item.dart';
import 'package:material_sidenav/src/components/sidebar/sidebar.dart';
import 'package:material_sidenav/src/components/sidebar_item/sidebar_item.dart';
import 'package:material_sidenav/src/components/toolbar/toolbar.dart';


void main() {
  bootstrap(AppComponent, const [
    materialProviders
  ]);
}

@Component(
    selector: 'my-app',
    directives: const [
      MMNavItemComponent,
      MMSidebarItemComponent,
      MMToolbarComponent,
      MMSidebarComponent,
    ],
    templateUrl: 'main.html',
    styleUrls: const [ 'main.css'],
)
class AppComponent {
  get menuElements => _menuElements;
}


final List<Map<String, dynamic>> _menuElements = [
  {
    'name': 'group1',
    'items': [
      {'icon': 'home', 'text': 'Home'},
      {'icon': 'home', 'text': 'Link1'},
      {'icon': 'home', 'text': 'Link2'},
      {'icon': 'home', 'text': 'Link3'},
      {'icon': 'home', 'text': 'Link4'}
    ]
  },
  {
    'name': 'group2',
    'items': [
      {'icon': '', 'text': 'Link0'},
      {'icon': '', 'text': 'Link1'},
      {'icon': '', 'text': 'Link2'},
      {'icon': '', 'text': 'Link3'},
      {'icon': '', 'text': 'Link4'},
      {'icon': '', 'text': 'Link0'},
      {'icon': '', 'text': 'Link1'},
      {'icon': '', 'text': 'Link2'},
      {'icon': '', 'text': 'Link3'},
      {'icon': '', 'text': 'Link4'}
    ]
  },
  {
    'name': 'group3',
    'items': [
      {'icon': '', 'text': 'Link0'},
      {'icon': '', 'text': 'Link1'},
      {'icon': '', 'text': 'Link2'},
      {'icon': '', 'text': 'Link3'},
      {'icon': '', 'text': 'Link4'}
    ]
  },
  {
    'name': 'group4',
    'items': [
      {'icon': '', 'text': 'Link0'},
      {'icon': '', 'text': 'Link1'},
      {'icon': '', 'text': 'Link2'},
      {'icon': '', 'text': 'Link3'},
      {'icon': '', 'text': 'Link4'},
      {'icon': '', 'text': 'Link0'},
      {'icon': '', 'text': 'Link1'},
      {'icon': '', 'text': 'Link2'},
      {'icon': '', 'text': 'Link3'},
      {'icon': '', 'text': 'Link4'}
    ]
  },
];
