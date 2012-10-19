package Acme::JoJo::Stand::Part4::EchoesAct3;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'エコーズ・アクト3' );
has '+name_en' => ( default => 'EchoesAct3' );
has '+has_character' => ( default => 'KouichiHirose' );
has '+about_ja' => ( default => '近距離パワー型。殴った対象が本体に近づくとそれに比例して加重を与える。' );
has '+growing_count' => ( default => 2 );
has '+detail_ja' => ( default => <<"DETAIL_JA"
「ACT2」が進化した姿で、それまでのエコーズとは異質な姿・能力をしており、自意識を持ち会話も出来る（康一には従順で丁寧な言葉使いだが口汚い）。射程は短く5m程度だが、その分身体的強度とパワーが増し肉弾戦が可能となった。姿は小柄な人型に近く、殴った物質を重くする「3 FREEZE（スリー・フリーズ）」の能力を持つ。重さは康一が対象に近づけば近づくほど重くなり、30cmくらいまで接近すればスタンドさえも地面にめり込みほとんど動けなくなるほど重く出来るが、同時に一つのみしか重く出来ず、射程距離外に出てしまうと重さが消えるどころか能力自体が解除されてしまい、もう一度殴らないと重く出来ない。なお、『黄金の風』では破壊力がAに格上げされている。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part4::EchoesAct3 - エコーズ・アクト3

=cut
