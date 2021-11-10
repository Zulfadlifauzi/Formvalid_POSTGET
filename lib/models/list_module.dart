class ModuleModel {
  String? number;
  String? description;
  String? title;
  String? image;
  ModuleModel(this.number, this.description, this.image, this.title);
}

List<ModuleModel> moduleModel = moduleData
    .map((item) => ModuleModel(
        item['number'], item['description'], item['image'], item['title']))
    .toList();

var moduleData = [
  {
    'number': '1. ',
    'description': 'Completed',
    'title': 'Scaffold',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'number': '2. ',
    'description': 'Completed',
    'title': 'Appbar',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'number': '3. ',
    'description': 'Completed',
    'title': 'floatingActionButton',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'number': '4. ',
    'description': 'Completed',
    'title': 'Drawer',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'number': '5. ',
    'description': 'Completed',
    'title': 'bottomNavigationBar',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'number': '6. ',
    'description': 'Completed',
    'title': 'PersistentFooterButtons',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'number': '7. ',
    'description': 'Completed',
    'title': 'Text',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'number': '8. ',
    'description': 'Completed',
    'title': 'RichText',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
  {
    'number': '9. ',
    'description': 'Completed',
    'title': 'Icon',
    'image':
        'https://i.pinimg.com/originals/c7/80/5e/c7805ee9aa1a16baaa33a7b1be2f220e.png'
  },
];
