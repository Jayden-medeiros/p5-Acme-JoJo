package Acme::JoJo::Constants;
use strict;
use warnings;
use parent qw(Exporter);
our @EXPORT_OK = ();
our %EXPORT_TAGS = (
    common => [qw(NO YES)],
    stair_way_to_heaven => [qw(NUMBER_OF_STAGES_FIRST NUMBER_OF_STAGES_SECOND NUMBER_OF_STAGES_FINAL)],
);

our $DATA = {};
__PACKAGE__->build_export_ok();
__PACKAGE__->make_hash_ref();

# common
use constant NO  => 0;
use constant YES => 1;

# StairwayToHeaven
use constant NUMBER_OF_STAGES_FIRST  => 0;
use constant NUMBER_OF_STAGES_SECOND => 1;
use constant NUMBER_OF_STAGES_FINAL  => 2;

sub build_export_ok {
    for my $tag  (keys %EXPORT_TAGS ){
        for my $key (@{$EXPORT_TAGS{$tag}}){
            push @EXPORT_OK,$key;
        }
    }
}

sub make_hash_ref {
    no strict 'refs';
    for my $key(@EXPORT_OK) {
        $DATA->{$key} = $key->();
    }
    1;
}

sub as_hashref {
    return $DATA;
}


1;
