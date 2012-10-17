use strict;
use warnings;
use Test::More;
use Acme::JoJo::Character::Part4::KouichiHirose;
use Acme::JoJo::Stand::Part4::EchoesAct1;
use Acme::JoJo::Stand::Part4::EchoesAct2;
use Acme::JoJo::Stand::Part4::EchoesAct3;

subtest 'Role Grow Up (KouichiHirose)' => sub {
    my $kouichi_kun = Acme::JoJo::Character::Part4::KouichiHirose->new();
    my $act1 = $kouichi_kun->stand;
    is( ref $act1, 'Acme::JoJo::Stand::Part4::EchoesAct1', 'default' );

    $kouichi_kun->grow_up;
    my $act2 = $kouichi_kun->stand;
    is( ref $act2, 'Acme::JoJo::Stand::Part4::EchoesAct2', 'first grow_up()' );

    $kouichi_kun->grow_up;
    my $act3 = $kouichi_kun->stand;
    is( ref $act3, 'Acme::JoJo::Stand::Part4::EchoesAct3', 'second grow_up()' );

    $kouichi_kun->grow_up;
    my $not_act4 = $kouichi_kun->stand;
    is( ref $not_act4, 'Acme::JoJo::Stand::Part4::EchoesAct3', 'limit grow_up()' );
};

subtest 'Role Grow Up (EchoesAct1)' => sub {
    my $act1 = Acme::JoJo::Stand::Part4::EchoesAct1->new();
    my $kouichi_kun = $act1->character;
    my $act1_from_kouichi_kun = $kouichi_kun->stand;
    is( ref $act1_from_kouichi_kun, 'Acme::JoJo::Stand::Part4::EchoesAct1', 'kouichi_kun from act1 has act1' );
};

subtest 'Role Grow Up (EchoesAct2)' => sub {
    my $act2 = Acme::JoJo::Stand::Part4::EchoesAct2->new();
    my $kouichi_kun = $act2->character;
    my $act2_from_kouichi_kun = $kouichi_kun->stand;
    is( ref $act2_from_kouichi_kun, 'Acme::JoJo::Stand::Part4::EchoesAct2', 'kouichi_kun from act2 has act2' );
};

subtest 'Role Grow Up (EchoesAct3)' => sub {
    my $act3 = Acme::JoJo::Stand::Part4::EchoesAct3->new();
    my $kouichi_kun = $act3->character;
    my $act3_from_kouichi_kun = $kouichi_kun->stand;
    is( ref $act3_from_kouichi_kun, 'Acme::JoJo::Stand::Part4::EchoesAct3', 'kouichi_kun from act3 has act3' );
};


done_testing();
