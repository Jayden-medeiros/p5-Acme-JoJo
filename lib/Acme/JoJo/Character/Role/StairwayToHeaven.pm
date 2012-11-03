package Acme::JoJo::Character::Role::StairwayToHeaven;

use strict;
use warnings;
use Mouse::Role;
use Carp;
use Acme::JoJo::Constants qw( :common :stair_way_to_heaven );

has 'has_stands' => ( is => 'ro', default => sub {[]} );
has 'already_united' => ( is => 'rw', default => NO );
has 'number_of_stages' => ( is => 'rw', default => NUMBER_OF_STAGES_FIRST );

sub BUILD {
    my $self = shift;
    $self->_change_stand;
};

sub _change_stand {
    my $self = shift;
    $self->has_stand( $self->has_stands->[$self->number_of_stages] );
}

sub unite_with_the_green_baby {
    my $self = shift;
    if( $self->already_united == NO ) {
        $self->already_united( YES );
        $self->_change_stand;
    }
    else {
        carp "already united with the green baby!!";
    }
}

sub reach_at_capecanaveral {
    my $self = shift;
    if( $self->number_of_stages == NUMBER_OF_STAGES_FIRST && $self->already_united == YES ) {
        $self->number_of_stages( NUMBER_OF_STAGES_SECOND );
        $self->_change_stand;
    }
    elsif( $self->number_of_stages == NUMBER_OF_STAGES_FIRST ) {
        carp "you have to unite with the green baby before go to cape canaveral.";
    }
    else {
        carp "already reached at cape canaveral!!";
    }
}

sub reach_at_position_of_reduced_gravity {
    my $self = shift;
    if( $self->number_of_stages == NUMBER_OF_STAGES_SECOND ) {
        $self->number_of_stages( NUMBER_OF_STAGES_FINAL );
        $self->_change_stand;
    }
    elsif( $self->number_of_stages == NUMBER_OF_STAGES_FINAL ) {
        carp "already reached at position of reduced gravity!!";
    }
    elsif( $self->number_of_stages == NUMBER_OF_STAGES_FIRST && $self->already_united == YES ) {
        carp "you have to go to cape canaveral before go to position of reduced gravity.";
    }
    else {
        carp "you have to unite with the green baby and go to cape canaveral before go to position of reduced gravity.";
    }
}

1;
