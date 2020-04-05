// < &#60;
// > &#62;
Map getData() {
  var demoData = {
    'basic syntax': {
      'string interpolation': '<span class="code">\'String with a \$variable\';</span><br><span class="code">\'String with an \${expression + x}\';</span>',
      'declaring objects using literals': 'List: <span class="code">[2, 4, 5]</span><br>Set: <span class="code">{2, 5, 7}</span><br>Map: <span class="code">{\'one\': 1, \'two\': 2}</span>',
      'declaring fields': '<span class="code">var</span> is a generic/dynamic variable type<br><span class="code">final</span> is a final <span class="code">var</span><br><span class="code">const</span> is a constant',
      'checking types': '<span class="code">as</span> typecast<br><span class="code">is</span> like javascript <span class="code"> instanceof</span><br><span class="code">is!</span> - <span class="code">!instanceof</span>',
      'chaining method calls': '<span class="code">a..b = true..c = 5</span><br>returns a reference to the object before the cascade, instead of the result. Allows for chaining methods',
      'dealing with null': '<span class="code">b ??= a</span> - like ruby <span class="code">||=</span><br><span class="code">a = first ?? second</span> - if first is <span class="code">null</span> then it will assign value to second<br><span class="code">a?.b</span> safe navigation operator',
      'function params': 'optional parameters: <span class="code">void myFunction([String name, int age]) {</span><br>optional parameters: <span class="code">String myFunction({String greeter, String greetee}) {</span><br>optional named params with default values: <span class="code">int myFunction(String nonOptionalName, { int age = 99 }) {',
      'function signature': 'arrow shortcut: <span class="code">int incr(int a) => a + 1;</span>',
      'exceptions': '<span class="code">try {...}<br>on MyException1 catch (e) {...}<br>on MyException2 {...}<br> catch (e) {...}<br>finally {...}</span>'

    },
    'classes': {
      'constructor': '<span class="code">MyClass(this.firstArg, this.secondArg)</span><br>named constructor: <span class="code">Element.div() {...</span><br>delegating a constructor: <span class="code">Point.alongXAxis(num x) : this(x, 0);</span><br>const constructor: <span class="code">const ImmutablePoint(this.x, this.y);</span> - produces immutable objects',
      'initializer list': 'sets instance variables <b>before</b> the constructor body runs:<br><span class="code">Point.fromJson(Map&#60String, num&#62; json)<br>&nbsp;&nbsp;: x = json[\'x\'] { ...</span><div class="information">The right-hand side of an initializer does not have access to <span class="code">this</span></div>',
      'factory constructor': '<span class="code">factory MyClass(int x) {</span><br><div class="information">Factory constructors have no access to <span class="code">this</span></div>',
      'methods': 'instance methods have access to <span class="code">this</span> and the instance variables<br>abstract methods are implemented with an <span class="code">abstract</span> keyword. <br>static methods are implemented with a keyword <span class="code">static</span>',
      'getters and setters': '<span class="code">num get total => price + tax;</span><br><span class="code">set price(num value) => price = value + 10;</span><br><div class="information">each instant variable has an explicit getter, plus a setter if appropriate</div>',
      'implicit interfaces': 'every class implicitly defines an interface. <br><span class="code">class Dog implements Animal {</span><br>to implement <span class="code">Animal</span> interface without inheriting its implementation.',
      'extending classes': '<span class="code">class Pudel extends Dog</span>',
      'overriding members': 'use <span class="code">@override</span> annotation when overriding instance methods, getters, or setters.',
      'overriding operators': '<span class="code">Vector operator +(Vector v) => Vector(x + v.x, y + v.y);</span><br><div class="information">search for a list of overridable operators</div>',

    },
    'iterators': {
      'itarable': 'an abstract class. Classes like `List` and `Set` inherit from it. Iterable doesn\'t have `[]` method. This method is implemented directly on the `List` class.',
      'iterator': 'an object that reads elements from an iterable.',
      'most common methods': '<span class="code">elementAt(1)<br>for (var el in iterable)<br>every((el) => el > 3);<br>any((el) => el < 0);<br>firstWhere, singleWhere</span> those will throw a <span class="code">StateError</span> if nothing found<br><span class="code">where</span> - no error<br><span class="code">takeWhile, skipWhile</span>',
    },
    'asynchronous': {
      'future': '<div class="information">A <i>future</i> is an instance of the <i>Future</i> class. A future represents a result of an async operation and can have two states: <b>uncompleted</b> and <b>completed</b>. A future can complete with a value or with an error.<br><span class="code">Future&#60;void&#62; fetchUserOrder() {...</span>',
      'async and await': '<span class="code">Future&#60;String&#62; someMethod() async { ··· }</span><br><div class="information"><span class="bullet">1. add <span class="code">async</span> before the function body</span><span class="bullet">2. update the return type to <span class="code">Future&#60;T&#62;</span></span></div><br><span class="code">var order = await fetchUserOrder(); </span>',
      'handling errors': 'like in synchronous code, use <span class="code">try-catch</span>',

    }
  };

  return demoData;
}
