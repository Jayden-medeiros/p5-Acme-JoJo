use strict;
use warnings;
use Test::More;
use Acme::JoJo::Character::Part7::FunnyValentine;

subtest 'Role Saint Dead Body (Funnyvalentine)' => sub {
    my $president = Acme::JoJo::Character::Part7::FunnyValentine->new();
    my $d4c = $president->stand;
    is( ref $d4c, 'Acme::JoJo::Stand::Part7::D4C', 'default' );

    $president->get_perfect_saint_dead_body;
    my $d4c_lt = $president->stand;
    is( ref $d4c_lt, 'Acme::JoJo::Stand::Part7::D4CLoveTrain', 'get_perfect_saint_dead_body()' );

    $president->get_perfect_saint_dead_body;
    my $d4c_lt_already = $president->stand;
    is( ref $d4c_lt_already, 'Acme::JoJo::Stand::Part7::D4CLoveTrain', 'already have perfect saint dead body' );

    $president->lose_perfect_saint_dead_body;
    my $d4c_lt_weaken = $president->stand;
    is( ref $d4c_lt_weaken, 'Acme::JoJo::Stand::Part7::D4C', 'lose_perfect_saint_dead_body()' );

    $president->lose_perfect_saint_dead_body;
    my $d4c_already = $president->stand;
    is( ref $d4c_already, 'Acme::JoJo::Stand::Part7::D4C', "don't have perfect saint dead body" );
};


done_testing();
