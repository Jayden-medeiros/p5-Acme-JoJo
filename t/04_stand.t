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
        ok( $stand->about, 'about()' );
        ok( $stand->detail, 'detail()' );
        like( ref $stand->character, qr/^Acme::JoJo::Character::Part\d+::/, 'character() returns object of Acme::JoJo::Character::Part\d+::' );
    }
};

subtest 'Stand Methods ( lang => en )' => sub {
    my $jojo = Acme::JoJo->new( lang => 'en' );
    my @stands = $jojo->stands;
    for my $stand ( @stands ) {
        ok( $stand->name, 'name()' );
        ok( $stand->character, 'character()' );
        ok( $stand->about, 'about()' );
        ok( $stand->detail, 'detail()' );
        like( $stand->name, qr/^[a-zA-Z0-9]+$/, 'name() returns half-width alphanumeric' );
        like( ref $stand->character, qr/^Acme::JoJo::Character::Part\d+::/, 'character() returns object of Acme::JoJo::Character::Part\d+::' );
        unlike( $stand->about, qr/^[a-zA-Z0-9_ ]+$/, 'about() returns only lang ja' ); # XXX if add about_en or others, modify this code.
        unlike( $stand->detail, qr/^[a-zA-Z0-9_ ]+$/, 'detail() returns only lang ja' ); # XXX if add detail_en or others, modify this code.
    }
};

done_testing();
