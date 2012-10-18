package Acme::JoJo::Character::Role::GrowUp;

use strict;
use warnings;
use Mouse::Role;
use Carp;

has 'has_stands' => ( is => 'ro', default => sub {[]} );
has 'growing_count' => ( is => 'rw', default => 0 );

sub BUILD {
    my $self = shift;
    $self->_change_stand;
};

sub _change_stand {
    my $self = shift;
    $self->has_stand( $self->has_stands->[$self->growing_count] );
}

sub grow_up {
    my $self = shift;
    if( $self->growing_count < scalar @{$self->has_stands} - 1 ) {
        $self->growing_count( $self->growing_count + 1 );
        $self->_change_stand;
    }
    else {
        carp "Can't grow up more than this!";
    }
}


1;
