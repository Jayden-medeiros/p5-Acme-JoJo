use strict;
use warnings;
use Test::More;
use Acme::JoJo::Character::Part6::EnricoPucci;
use Acme::JoJo::Stand::Part6::WhiteSnake;
use Acme::JoJo::Stand::Part6::CMoon;
use Acme::JoJo::Stand::Part6::MadeInHeaven;

subtest 'Role Stairway To Heaven (EnricoPucci)' => sub {
    my $father = Acme::JoJo::Character::Part6::EnricoPucci->new();
    {
        my $stand = $father->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::WhiteSnake', 'default' );
        subtest 'Role Stairway To Heaven (EnricoPucci) - bad way' => sub {
            {
                $father->reach_at_capecanaveral();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::WhiteSnake', 'cant reach_at_capecanaveral() before unite with the green baby.' );
            }
            {
                $father->reach_at_position_of_reduced_gravity();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::WhiteSnake', 'cant reach_at_position_of_reduced_gravity() before unite with the green baby.' );
            }
        };
    }
    {
        $father->unite_with_the_green_baby();
        my $stand = $father->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::WhiteSnake', 'just unite_with_the_green_baby()' );
        subtest 'Role Stairway To Heaven (EnricoPucci) - bad way' => sub {
            {
                $father->unite_with_the_green_baby();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::WhiteSnake', 'already united with the green baby.' );
            }
            {
                $father->reach_at_position_of_reduced_gravity();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::WhiteSnake', 'cant reach_at_position_of_reduced_gravity() before reach_at_capecanaveral()' );
            }
        };
    }
    {
        $father->reach_at_capecanaveral();
        my $stand = $father->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::CMoon', 'reach_at_capecanaveral()' );
        subtest 'Role Stairway To Heaven (EnricoPucci) - bad way' => sub {
            {
                $father->unite_with_the_green_baby();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::CMoon', 'already united with the green baby.' );
            }
            {
                $father->reach_at_capecanaveral();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::CMoon', 'already reached at cape canaveral' );
            }
        };
    }
    {
        $father->reach_at_position_of_reduced_gravity();
        my $stand = $father->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::MadeInHeaven', 'reach_at_position_of_reduced_gravity()' );
        subtest 'Role Stairway To Heaven (EnricoPucci) - bad way' => sub {
            {
                $father->unite_with_the_green_baby();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::MadeInHeaven', 'already united with the green baby.' );
            }
            {
                $father->reach_at_capecanaveral();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::MadeInHeaven', 'already reached at cape canaveral' );
            }
            {
                $father->reach_at_position_of_reduced_gravity();
                my $stand = $father->stand;
                is( ref $stand, 'Acme::JoJo::Stand::Part6::MadeInHeaven', 'already reached at position of reduced gravity.' );
            }
        };
    }
};

subtest 'Role Stairway To Heaven (WhiteSnake)' => sub {
    my $stand = Acme::JoJo::Stand::Part6::WhiteSnake->new();
    my $father = $stand->character;
    my $stand_from_father = $father->stand;
    is( ref $stand_from_father, 'Acme::JoJo::Stand::Part6::WhiteSnake', 'father from white snake has white snake' );
};

subtest 'Role Stairway To Heaven (CMoon)' => sub {
    my $stand = Acme::JoJo::Stand::Part6::CMoon->new();
    my $father = $stand->character;
    my $stand_from_father = $father->stand;
    is( ref $stand_from_father, 'Acme::JoJo::Stand::Part6::CMoon', 'father from c-moon has c-moon' );
};

subtest 'Role Stairway To Heaven (MadeInHeaven)' => sub {
    my $stand = Acme::JoJo::Stand::Part6::MadeInHeaven->new();
    my $father = $stand->character;
    my $stand_from_father = $father->stand;
    is( ref $stand_from_father, 'Acme::JoJo::Stand::Part6::MadeInHeaven', 'father from made in heaven has made in heaven' );
};


done_testing();
