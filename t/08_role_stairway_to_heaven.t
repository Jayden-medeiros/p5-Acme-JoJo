use strict;
use warnings;
use Test::More;
use Acme::JoJo::Character::Part6::EnricoPucci;
use Acme::JoJo::Stand::Part6::WhiteSnake;

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

done_testing();
