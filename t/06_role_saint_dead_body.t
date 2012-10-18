use strict;
use warnings;
use Test::More;
use Acme::JoJo::Character::Part7::FunnyValentine;
use Acme::JoJo::Stand::Part7::D4C;
use Acme::JoJo::Stand::Part7::D4CLoveTrain;

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

subtest 'Role Saint Dead Body (D4C)' => sub {
    my $d4c = Acme::JoJo::Stand::Part7::D4C->new();
    my $president = $d4c->character;
    my $d4c_from_president = $president->stand;
    is( ref $d4c_from_president, 'Acme::JoJo::Stand::Part7::D4C', 'president from d4c has d4c' );
};

subtest 'Role Saint Dead Body (D4CLoveTrain)' => sub {
    my $d4c = Acme::JoJo::Stand::Part7::D4CLoveTrain->new();
    my $president = $d4c->character;
    my $d4c_from_president = $president->stand;
    is( ref $d4c_from_president, 'Acme::JoJo::Stand::Part7::D4CLoveTrain', 'president from d4c_love_train has d4c_love_train' );
};


done_testing();
