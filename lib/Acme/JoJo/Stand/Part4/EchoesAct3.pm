package Acme::JoJo::Stand::Part4::EchoesAct3;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'エコーズ・アクト3' );
has '+name_en' => ( default => 'EchoesAct3' );
has '+has_character' => ( default => 'KouichiHirose' );
has '+description_ja' => ( default => '近距離パワー型。殴った対象が本体に近づくとそれに比例して加重を与える。' );
has '+growing_count' => ( default => 2 );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part4::EchoesAct3 - エコーズ・アクト3

=cut
