use v6;

module Endure;

role Resource {
}

role property {
}

multi trait_mod:<is>(AttributeDeclarand $a, Endure::property, $type, %args = {}) {
    $a.container.VAR does Endure::property;

    #say 'type is: ', $type.WHAT;
    #say 'args: ', %args;

    say 'applied is trait';
    #say ~$a.^methods;
    #say ~$a.container.WHAT;
    #say $_.name for $a.^attributes;

    $a.container.VAR.type = $type;
    $a.container.VAR.args = %args;
}

# vim: ft=perl6
