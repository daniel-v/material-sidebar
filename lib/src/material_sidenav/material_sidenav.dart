import 'package:angular2/core.dart';

import '../components/nav_item/nav_item.dart';
import '../components/toolbar_item/toolbar_item.dart';

@Component(
    selector: 'material-sidenav',
    templateUrl: 'material_sidenav.html',
    styleUrls: const [
      'material_sidenav.css'
    ],
    directives: const [
      MMNavItemComponent,
      MMToolbarItemComponent,
    ])
class MaterialSidenavComponent {
  bool isOpened = true;

  toggleToolbar() {
    isOpened = !isOpened;
  }

  get menuElements => _menuElements;

  void printHello() {}
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
