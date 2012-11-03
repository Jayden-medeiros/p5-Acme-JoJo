package Acme::JoJo::Stand::Part6::MadeInHeaven;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::StairwayToHeaven';
use Acme::JoJo::Constants qw( :common :stair_way_to_heaven );

has '+name_ja' => ( default => 'メイド・イン・ヘブン' );
has '+name_en' => ( default => 'MadeInHeaven' );
has '+has_character' => ( default => 'EnricoPucci' );
has '+already_united' => ( default => YES );
has '+number_of_stages' => ( default => NUMBER_OF_STAGES_FINAL );
has '+about_ja' => ( default => '生物以外の全ての時間を無限大に「加速」させ、世界の「終末」の先にある一巡した「新世界」まで進める。本体は「加速」した時間のスピードで動ける。' );
has '+detail_ja' => ( default => <<"DETAIL_JA"
プッチが重力を最も軽減できる位置に到達したことで進化した、プッチのスタンドの完成形。それまでのプッチのスタンドとは全く異なる外見であり、前半身だけの馬に人が跨った姿をしており、顔の中心や手の甲には能力を象徴するかのように時計(或いは計器)のマークが描かれている。時を無限に加速させるスタンドであり、「天国へ行く方法」実現の鍵となる。プッチ以外の全生物は時の加速についていけず、傍目から見るとプッチが高速移動しているように見える。また、時に影響を与える能力を得たためか、この能力の発現前後から「スタープラチナの能力によって止まった時」を認識できるようになる。スタンド自体の破壊力はスタープラチナ等と比較するとそれ程高くないが、時の加速による凄まじいスピードが加わることにより恐るべき攻撃力を生む。単行本17巻掲載のスタンドパラメータでは時間の加速の原理について「全宇宙の「引力」を利用して加速しているようだ」と説明されている。
このスタンドの真の能力は、時間を無限大に加速し続けることで世界を一巡させることである。一巡した間に全ての人間や生物は未来にいつ何が起こるかを体験しており、その運命を変えることは出来ない（多少の違いはあっても運命に変更は無い。例えば紙を踏んで転ぶと言う出来事を体験している人間が、紙を踏むまいと回避したとしても別の物に躓き転んでしまう。）が、プッチ本人のみは自身や他者の運命に干渉、変更することが出来る。雑誌連載時は呼称がステアウェイ・トゥ・ヘブン（天国への階段）であった。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part6::MadeInHeaven - メイド・イン・ヘブン

=cut
