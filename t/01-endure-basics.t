use v6;
use Test;

plan 2;

use Endure;

ok(1, "Loaded Endure properly");

{
#class Book does Endure::Resource {
#    has $.pages is Endure::property('string', {primary_key => 'a_key'});
#    has $.title is Endure::property(Str, {length => 3..10});
#}

#say 'done making books';

#my $book = Book.new;
#$book.pages.VAR.type.say;
#$book.title.VAR.args.say;
#$book.save;

  class Book does Endure::Resource {
    has Str $.title; # does Endure::property;
    has Num $.length; # does Endure::property;
    has Str $.author; # does Endure::property;
  };

  my Book $wild_things = Book.new(:title('Where the Wild Things Are'),
                                  :length(48),
                                  :author('Maurice Sendak'));

  is($wild_things.title, 'Where the Wild Things Are', 'Attributes still function normally');
}
