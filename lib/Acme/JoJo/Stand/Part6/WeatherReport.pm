package Acme::JoJo::Stand::Part6::WeatherReport;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;

has '+name_ja' => ( default => 'ウェザー・リポート' );
has '+name_en' => ( default => 'WeatherReport' );
has '+has_character' => ( default => 'WeatherReport' );
has '+about_ja' => ( default => '周囲の天候や大気を自在に操る。後にエンポリオ・アルニーニョが本体になる。' );
has '+detail_ja' => ( default => <<"DETAIL_JA"
天候や空気を広範囲に操れるスタンド。気象を自由に操ることで酸素マスクを生みだしたり、集中豪雨を利用して渋滞を引き起こして足止めしたりと幅広い応用力をもち、近距離戦・遠距離戦・集団戦いずれも得意とする強力なスタンド。他のスタンドと比べても正面からの戦闘能力は圧倒的だが、発現できる気象状態は微調整ができず、飛行中の飛行機には追いつけないなど、気象現象の限界を超えることはできない。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part6::WeatherReport - ウェザー・リポート

=cut
