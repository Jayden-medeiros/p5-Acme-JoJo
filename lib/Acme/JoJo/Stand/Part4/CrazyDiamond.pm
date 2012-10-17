package Acme::JoJo::Stand::Part4::CrazyDiamond;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;

has '+name_ja' => ( default => 'クレイジー・ダイヤモンド' );
has '+name_en' => ( default => 'CrazyDiamond' );
has '+has_character' => ( default => 'JosukeHigashikata' );
has '+description_ja' => ( default => '近距離パワー型。触れた物体を直す。自分以外なら生物も治せるが、死者を生き返らせる事はできない。' );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part4::CrazyDiamond - クレイジー・ダイヤモンド

=cut
