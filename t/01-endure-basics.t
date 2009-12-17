use v6;
use Test;

plan 4;

use Endure;
#import Endure <Resource property>;

ok(1, "Loaded Endure properly");

class Book does Endure::Resource {
  has Str $.title; # does Endure::Property;
  has Num $.length; # does Endure::Property;
  has Str $.author; # does Endure::Property;
}

say 'should of integrated the properties';

{
  my Book $wild_things = Book.new(:title('Where the Wild Things Are'),
                                  :length(48),
                                  :author('Maurice Sendak'));

  is($wild_things.title, 'Where the Wild Things Are', 'Attributes still function normally');
  is($wild_things.length, 48);
  is($wild_things.author, 'Maurice Sendak');
}
