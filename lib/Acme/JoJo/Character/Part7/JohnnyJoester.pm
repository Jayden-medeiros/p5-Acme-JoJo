package Acme::JoJo::Character::Part7::JohnnyJoester;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;
with 'Acme::JoJo::Character::Role::GrowUp';

has '+name_ja' => ( default => 'ジョニィ・ジョースター' );
has '+name_en' => ( default => 'JohnnyJoester' );
has '+has_stand' => ( default => 'TuskAct1' );
has '+has_stands' => ( default => sub { ['TuskAct1','TuskAct2','TuskAct3','TuskAct4'] } );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part7::JohnnyJoester - ジョニィ・ジョースター

=head1 SPECIAL METHODS

=head2 grow_up

  $johnny->grow_up;

johnny default has TuskAct1.
after first grow_up(), johnny has TuskAct2.
after second grow_up(), johnny has TuskAct3.
after third grow_up(), johnny has TuskAct4.
max number of grow_up() is 3.

=cut
