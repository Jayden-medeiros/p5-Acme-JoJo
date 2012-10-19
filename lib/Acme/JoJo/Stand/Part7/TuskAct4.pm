package Acme::JoJo::Stand::Part7::TuskAct4;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'タスク・アクト4' );
has '+name_en' => ( default => 'TuskAct4' );
has '+has_character' => ( default => 'JohnnyJoester' );
has '+about_ja' => ( default => '馬の生み出した「黄金の回転」のエネルギーにより、対象に無限かつ脱出不可能なダメージを与える。' );
has '+growing_count' => ( default => 3 );
has '+detail_ja' => ( default => <<"DETAIL_JA"
ジョニィ自身の回転に加え、馬の走る力で得た回転を合わせることによって無限の回転エネルギーを発し、次元の壁をもこじ開ける。スタンド像は胴体の中央から顔の生えた人型で、拳での戦闘も行うようになった。ラッシュ時の掛け声は、承太郎や徐倫と同じく「オラオラ」を連呼する。別次元のディエゴの能力で止まった時の中でも活動することが可能。
このスタンドで与えたダメージは無限に続き、スタンドラッシュで地面に埋め込まれたヴァレンタインはあらゆる方法で脱出しようとしても無限の回転のエネルギーによって同じ場所に戻され、埋まり続けた。最初に打ち込んだ回転と全く逆方向の回転を打ち込むことでのみ、この無限の回転を停止させることができる。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::TuskAct4 - タスク・アクト4

=cut
