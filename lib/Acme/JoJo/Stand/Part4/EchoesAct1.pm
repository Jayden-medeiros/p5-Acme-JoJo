package Acme::JoJo::Stand::Part4::EchoesAct1;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;

has '+name_ja' => ( default => 'エコーズ・アクト1' );
has '+name_en' => ( default => 'EchoesAct1' );
has '+has_character' => ( default => 'KouichiHirose' );
has '+description_ja' => ( default => 'トカゲのような姿をした遠隔操作型。音を物体に染み込ませる能力を持つ。' );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part4::EchoesAct1 - エコーズ・アクト1

=cut
