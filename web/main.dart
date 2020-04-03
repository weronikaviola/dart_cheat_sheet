import 'dart:html';
import './data.dart';

class TutorialPage {
  Map tabs;
  Element cardsContainter;
  String activeTabName;

  TutorialPage(this.tabs, this.cardsContainter, this.activeTabName);

  Element get cardsContainer {
    return cardsContainter;
  }

  void initialize() {
    _displayCards();
    _displayContent();
  }

  void _displayCards() {
    tabs.forEach((tab, value) => _createTab(tab));
  }

  void _displayContent() {
    var content = querySelector('.content');
    content.text = '';
    var c = tabs[activeTabName];
    c.forEach((section, text) => {
      content.children.add(
        Element.div()
          ..children.add(
            Element.p()
              ..text = section
              ..className = 'heading'
              ..id = 'heading-${_getHashCode(section)}'
              ..children.add(
                ButtonElement()
                  ..addEventListener('click', (e) => _toggleMenu(_getHashCode(section), e))
                  ..text = '⬇️'
                  ..className = 'more-button down'
              )
            )
          ..children.add(
            Element.p()
              ..innerHtml = text
              ..className = 'text hidden'
              ..id = 'text-${_getHashCode(section)}'
              ..style.visibility = 'hidden'
            )
          ..classes.add('content-section')
      )
    });
  }

  void _toggleMenu(String sectionName, Event event) {
    var btn = event.target as ButtonElement;
    var content = querySelector('#text-$sectionName');
    if (btn.classes.contains('down')) {
      btn.text = '⬆️';
      btn.classes.remove('down');
      content
        ..style.visibility = 'visible'
        ..classes.remove('hidden');
    } else {
      btn.text = '⬇️';
      btn.classes.add('down');
      content
        ..style.visibility = 'hidden'
        ..classes.add('hidden');
    }
  }


  void _createTab(String tab) {
    cardsContainer.children.add(
      ButtonElement()..text = tab..className = 'card'..addEventListener(
        'click',
        (Event e) => _handleCardClick(tab),
      ));
  }

  void _handleCardClick(tab) {
    activeTabName = tab;
    _displayContent();
  }

  String _getHashCode(String string) {
    return string.replaceAll(' ', '-');
  }
}


void main() {
  var demoData = getData();
  var container = querySelector('#headers');
  var page = TutorialPage(demoData, container, 'basic syntax');
  page.initialize();
}
