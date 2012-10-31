package Acme::JoJo::Character::Role::MemoryDisc;

use strict;
use warnings;
use Mouse::Role;
use Carp;
use Acme::JoJo::Constants qw( :common );

has 'has_another_stand' => ( is => 'rw' );
has 'has_memory_disc' => ( is => 'rw', default => NO );

sub BUILD {
    my $self = shift;
    $self->_switch_stand if $self->has_memory_disc;
};

sub _switch_stand {
    my $self = shift;
    my $orig_stand = $self->has_stand;
    $self->has_stand( $self->has_another_stand );
    $self->has_another_stand( $orig_stand );
}

sub insert_memory_disc {
    my $self = shift;
    if( $self->has_memory_disc ) {
        carp "already have memory disc!";
    }
    else {
        $self->has_memory_disc(YES);
        $self->_switch_stand;
    }
}

sub eject_memory_disc {
    my $self = shift;
    if( $self->has_memory_disc ) {
        $self->has_memory_disc(NO);
        $self->_switch_stand;
    }
    else {
        carp "don't have memory disc..";
    }
}


1;
