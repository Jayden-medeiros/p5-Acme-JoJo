package Acme::JoJo::Stand::Role::SaintDeadBody;

use strict;
use warnings;
use Mouse::Role;

has 'has_perfect_saint_dead_body' => ( is => 'rw' );

sub _default_args {
    my $self = shift;
    return +{
        lang => $self->lang,
        has_perfect_saint_dead_body => $self->has_perfect_saint_dead_body,
    };
}


1;
