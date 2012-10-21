package Acme::JoJo::Character::Part7::FunnyValentine;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;
with 'Acme::JoJo::Character::Role::SaintDeadBody';

has '+name_ja' => ( default => 'ファニー・ヴァレンタイン' );
has '+name_en' => ( default => 'FunnyValentine' );
has '+has_stand' => ( default => 'D4C' );
has '+has_another_stand' => ( default => 'D4CLoveTrain' );
has '+detail_ja' => ( default => <<"DETAIL_JA"
第23代アメリカ合衆国大統領。1847年9月20日生まれ。アメリカ各地に散らばっている「遺体」を集めるためにSBRレースを利用し、その遺体をマンハッタン島のシェルターに埋葬・保管する事によりアメリカを『世界の全ての中心』にしようとしている。
そのためには手段を選ばず、遺体を手に入れたジャイロたちに抹殺を目的とした刺客を送り込んだ。過去にカルフォルニア・サンディエゴ捜索隊に同行した際、「悪魔の手のひら」に遭遇し遺体の「心臓部」を手に入れている（スタンド能力がこれによって発現したかは不明）。
序盤では肥満体として描かれていたが、アクセル・RO戦を境に筋肉質な体格に変化している。また、平行世界の自分とは、自我が共有されているような描写があった。
愛国心を絶対的価値観としており、遺体の回収もアメリカ国民の安全を保障するため。そのためか国民の支持は高く、死後もレース終了後に国民から惜しみない賞賛を受けた。進化させたスタンドによってジャイロを倒すも、爪弾をあえて撃たせる余裕を見せたことが仇となりジョニィに敗れる。
なお、あくまで架空の大統領であり、実在した第23代大統領はベンジャミン・ハリソンである。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part7::FunnyValentine - ファニー・ヴァレンタイン

=head1 SPECIAL METHODS

=head2 get_perfect_saint_dead_body

  $president->get_perfect_saint_dead_body unless $president->has_perfect_saint_dead_body;

If the president get perfect saint's dead body, the president has D4CLoveTrain.

=head2 lose_perfect_saint_dead_body

  $president->lose_perfect_saint_dead_body if $president->has_perfect_saint_dead_body;

If the president lose perfect saint's dead body, the president has D4C.

=cut
