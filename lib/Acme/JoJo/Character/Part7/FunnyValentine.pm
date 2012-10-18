package Acme::JoJo::Character::Part7::FunnyValentine;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;
with 'Acme::JoJo::Character::Role::SaintDeadBody';

has '+name_ja' => ( default => 'ファニー・ヴァレンタイン' );
has '+name_en' => ( default => 'FunnyValentine' );
has '+has_stand' => ( default => 'D4C' );
has '+has_another_stand' => ( default => 'D4CLoveTrain' );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part7::FunnyValentine - ファニー・ヴァレンタイン

=head1 SPECIAL METHODS

=head2 get_perfect_saint_dead_body

  $president->get_perfect_saint_dead_body unless $president->has_perfect_saint_dead_body;

If the president get perfect saint's dead body, the president has D4CLoveTrain.

=head2 lose_perfect_saint_dead_body

  $president->lose_perfect_saint_dead_body if $president->has_perfect_saint_dead_body;

If the president lose perfect saint's dead body, the president has D4C.

=cut
