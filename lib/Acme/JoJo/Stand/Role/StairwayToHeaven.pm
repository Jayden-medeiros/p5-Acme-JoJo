package Acme::JoJo::Stand::Role::StairwayToHeaven;

use strict;
use warnings;
use Mouse::Role;

has 'already_united' => ( is => 'rw' );
has 'number_of_stages' => ( is => 'rw' );

sub _default_args {
    my $self = shift;
    return +{
        lang             => $self->lang,
        already_united   => $self->already_united,
        number_of_stages => $self->number_of_stages,
    };
}


1;
