package Acme::JoJo::Character::Part4::KouichiHirose;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;
with 'Acme::JoJo::Character::Role::GrowUp';

has '+name_ja' => ( default => '広瀬康一' );
has '+name_en' => ( default => 'KouichiHirose' );
has '+has_stand' => ( default => 'EchoesAct1' );
has '+has_stands' => ( default => sub { ['EchoesAct1','EchoesAct2','EchoesAct3'] } );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part4::KouichiHirose - 広瀬康一

=head1 SPECIAL METHODS

=head2 grow_up

  $kouichi_kun->grow_up;

kouichi_kun default has EchoesAct1.
after first grow_up(), kouichi_kun has EchoesAct2.
after second grow_up(), kouichi_kun has EchoesAct3.
max number of grow_up() is 2.

=cut
