package Acme::JoJo::Stand::Part4::EchoesAct1;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'エコーズ・アクト1' );
has '+name_en' => ( default => 'EchoesAct1' );
has '+has_character' => ( default => 'KouichiHirose' );
has '+about_ja' => ( default => 'トカゲのような姿をした遠隔操作型。音を物体に染み込ませる能力を持つ。' );
has '+growing_count' => ( default => 0 );
has '+detail_ja' => ( default => <<"DETAIL_JA"
虹村形兆に矢で射抜かれたことで発現したスタンド。当初卵の状態で出現し、玉美との戦いで殻を破って誕生した。康一の精神的成長に合わせて脱皮するように進化していく（「ACT2」の登場後は、初期のエコーズは「ACT1」と命名された）。進化直後は進化前の姿・能力を使用できず狼狽する場面もあったが、後に進化前・進化後のエコーズの姿・能力を任意で使い分けている。スタンド名の由来はイギリスのバンドピンク・フロイドの楽曲「エコーズ」。

卵から孵った、虫の様な不定形な姿のエコーズ。射程は50m程度。パワー、スピードはほとんど無いが、物体に文字（擬音）を貼り付け、その音を繰り返し響かせる能力を持つ。また、康一の気持ちを文章にしたモノを相手に貼り付ければ、相手の心に直に想いを強く訴えることができる。ただし、異常なほど思い込みの激しい人間には通用しない。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part4::EchoesAct1 - エコーズ・アクト1

=cut
