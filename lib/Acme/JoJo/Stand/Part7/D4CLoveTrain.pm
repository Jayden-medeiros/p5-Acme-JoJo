package Acme::JoJo::Stand::Part7::D4CLoveTrain;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::SaintDeadBody';
use Acme::JoJo::Constants qw( :common );

has '+name_ja' => ( default => 'ディー・フォー・シー・ラブトレイン' );
has '+name_en' => ( default => 'D4CLoveTrain' );
has '+has_character' => ( default => 'FunnyValentine' );
has '+about_ja' => ( default => '聖人の遺体と一体化したルーシーを基点に生まれた「空間の隙間」に入り込む事で、自らに加えられた害悪を退ける。退けられた害悪は世界のどこかで誰かが強制的に被る事になる。' );
has '+has_perfect_saint_dead_body' => ( default => YES );
has '+detail_ja' => ( default => <<"DETAIL_JA"
終盤、「遺体」となったルーシーによりD4Cはルーシーを基点に生まれた空間の隙間をヴァレンタインだけが移動できるという能力を得た。遺体となったルーシーにはこの世のあらゆる善が空間の隙間に濾過されて集まっており、害悪は隙間に入れず遠くのどこかに飛ばされる。その為、大統領が隙間の中にいる間はここに放たれた攻撃は大統領に通用する事は無く、その攻撃は何らかの災厄の形となって、遠くの誰かが代わりに「おっかぶる」事になる。この能力は、遺体を所有する大統領のD4Cに味方している。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::D4CLoveTrain - ディー・フォー・シー・ラブトレイン

=cut
