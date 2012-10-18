package Acme::JoJo::Character::Role::SaintDeadBody;

use strict;
use warnings;
use Mouse::Role;
use Carp;

use constant INVALID => 0;
use constant VALID => 1;

has 'has_another_stand' => ( is => 'rw' );
has 'has_perfect_saint_dead_body' => ( is => 'rw', default => INVALID );

sub BUILD {
    my $self = shift;
    $self->_switch_stand if $self->has_perfect_saint_dead_body;
};

sub _switch_stand {
    my $self = shift;
    my $orig_stand = $self->has_stand;
    $self->has_stand( $self->has_another_stand );
    $self->has_another_stand( $orig_stand );
}

sub get_perfect_saint_dead_body {
    my $self = shift;
    if( $self->has_perfect_saint_dead_body ) {
        carp "already have perfect saint dead body!";
    }
    else {
        $self->has_perfect_saint_dead_body(VALID);
        $self->_switch_stand;
    }
}

sub lose_perfect_saint_dead_body {
    my $self = shift;
    if( $self->has_perfect_saint_dead_body ) {
        $self->has_perfect_saint_dead_body(INVALID);
        $self->_switch_stand;
    }
    else {
        carp "don't have perfect saint dead body..";
    }
}


1;
