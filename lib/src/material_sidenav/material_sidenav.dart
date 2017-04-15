import 'package:angular2/core.dart';

@Component(
    selector: 'material-sidenav',
    templateUrl: 'material_sidenav.html',
    styleUrls: const ['material_sidenav.css'])
class MaterialSidenavComponent {
    List<Map<String, dynamic>> _menuElements = [
        {
            'name': 'group1',
            'items': [
                {'icon': 'home','text': 'Home'},
                {'icon': '','text': 'Link1'},
                {'icon': '','text': 'Link2'},
                {'icon': '','text': 'Link3'},
                {'icon': '','text': 'Link4'}
            ]
        },
        {
            'name': 'group2',
            'items': [
                {'icon': '','text': 'Link0'},
                {'icon': '','text': 'Link1'},
                {'icon': '','text': 'Link2'},
                {'icon': '','text': 'Link3'},
                {'icon': '','text': 'Link4'},
                {'icon': '','text': 'Link0'},
                {'icon': '','text': 'Link1'},
                {'icon': '','text': 'Link2'},
                {'icon': '','text': 'Link3'},
                {'icon': '','text': 'Link4'}
            ]
        },
        {
            'name': 'group3',
            'items': [
                {'icon': '','text': 'Link0'},
                {'icon': '','text': 'Link1'},
                {'icon': '','text': 'Link2'},
                {'icon': '','text': 'Link3'},
                {'icon': '','text': 'Link4'}
            ]
        },
        {
            'name': 'group4',
            'items': [
                {'icon': '','text': 'Link0'},
                {'icon': '','text': 'Link1'},
                {'icon': '','text': 'Link2'},
                {'icon': '','text': 'Link3'},
                {'icon': '','text': 'Link4'},
                {'icon': '','text': 'Link0'},
                {'icon': '','text': 'Link1'},
                {'icon': '','text': 'Link2'},
                {'icon': '','text': 'Link3'},
                {'icon': '','text': 'Link4'}
            ]
        },
    ];
    bool _isOpened = false;

    toggleToolbar() {
        _isOpened = !_isOpened ;
    }

    get menuElements => _menuElements;
    get isOpened => _isOpened;
    set isOpened(val) {
        _isOpened = val;
    }
}
