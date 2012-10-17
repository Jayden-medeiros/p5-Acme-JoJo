use strict;
use warnings;
use Test::More;
use Acme::JoJo;

subtest 'Character Methods' => sub {
    my $jojo = Acme::JoJo->new();
    my @characters = $jojo->characters;
    for my $character ( @characters ) {
        ok( $character->name, 'name()' );
        if( $character->has_stand ) {
            ok( $character->stand, 'stand()' );
            like( ref $character->stand, qr/^Acme::JoJo::Stand::Part\d+::/, 'stand() returns object of Acme::JoJo::Stand::Part\d+::' );
        }
        else {
            is( $character->stand, undef, 'stand() - if dont have a stand' );
        }
    }
};

subtest 'Character Methods ( lang => en )' => sub {
    my $jojo = Acme::JoJo->new( lang => 'en' );
    my @characters = $jojo->characters;
    for my $character ( @characters ) {
        ok( $character->name, 'name()' );
        like( $character->name, qr/^[a-zA-Z0-9]+$/, 'name() returns half-width alphanumeric' );
        if( $character->has_stand ) {
            ok( $character->stand, 'stand()' );
            like( ref $character->stand, qr/^Acme::JoJo::Stand::Part\d+::/, 'stand() returns object of Acme::JoJo::Stand::Part\d+::' );
        }
        else {
            is( $character->stand, undef, 'stand() - if dont have a stand' );
        }
    }
};

done_testing();
