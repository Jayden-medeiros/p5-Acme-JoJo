package Acme::JoJo::Stand::Role::GrowUp;

use strict;
use warnings;
use Mouse::Role;

has 'growing_count' => ( is => 'rw', default => 0 );

sub _default_args {
    my $self = shift;
    return +{
        lang => $self->lang,
        growing_count => $self->growing_count,
    };
}


1;
