use strict;
use warnings;
use Test::More;
use Acme::JoJo;

subtest 'Stand Methods' => sub {
    my $jojo = Acme::JoJo->new();
    my @stands = $jojo->stands;
    for my $stand ( @stands ) {
        ok( $stand->name, 'name()' );
        ok( $stand->character, 'character()' );
        ok( $stand->description, 'description()' );
        like( ref $stand->character, qr/^Acme::JoJo::Character::Part\d+::/, 'character() returns object of Acme::JoJo::Character::Part\d+::' );
    }
};

subtest 'Stand Methods ( lang => en )' => sub {
    my $jojo = Acme::JoJo->new( lang => 'en' );
    my @stands = $jojo->stands;
    for my $stand ( @stands ) {
        ok( $stand->name, 'name()' );
        ok( $stand->character, 'character()' );
        ok( $stand->description, 'description()' );
        like( $stand->name, qr/^[a-zA-Z0-9]+$/, 'name() returns half-width alphanumeric' );
        like( ref $stand->character, qr/^Acme::JoJo::Character::Part\d+::/, 'character() returns object of Acme::JoJo::Character::Part\d+::' );
        unlike( $stand->description, qr/^[a-zA-Z0-9_ ]+$/, 'description() returns only lang ja' ); # XXX if add description_en or others, modify this code.
    }
};

done_testing();
