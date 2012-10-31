package Acme::JoJo::Stand::Role::MemoryDisc;

use strict;
use warnings;
use Mouse::Role;

has 'has_memory_disc' => ( is => 'rw' );

sub _default_args {
    my $self = shift;
    return +{
        lang => $self->lang,
        has_memory_disc => $self->has_memory_disc,
    };
}


1;
