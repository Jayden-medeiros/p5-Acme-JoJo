package Acme::JoJo::Stand::Part6::CMoon;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::StairwayToHeaven';
use Acme::JoJo::Constants qw( :common :stair_way_to_heaven );

has '+name_ja' => ( default => 'シー・ムーン' );
has '+name_en' => ( default => 'CMoon' );
has '+has_character' => ( default => 'EnricoPucci' );
has '+already_united' => ( default => YES );
has '+number_of_stages' => ( default => NUMBER_OF_STAGES_SECOND );
has '+about_ja' => ( default => '遠隔操作型。殴ったものを裏返すほか、本体を中心にして周囲の重力の向きを変える。' );
has '+detail_ja' => ( default => <<"DETAIL_JA"
緑色の赤ん坊と合体したプッチが、重力の影響を受けにくいケープ･カナベラルに到達した事でホワイトスネイクが進化した姿。外見はホワイトスネイクと緑色の赤ん坊双方の特徴を受け継ぎ、体のあちこちから能力を象徴するように矢印のようなものが突き出ている。重力に影響を与える力を持ち、本体の周囲3kmに存在する物体はプッチを上にして落下するようになり、攻撃した物体の引力を逆転させ、内と外を裏返しにする。この裏返りの作用でダメージを与えることも出来るが、裏返った物が再度攻撃を受けると能力が相殺されて元に戻り、メビウスの輪やクラインの壺のように表裏の概念が無い物体に対しては効力を発揮できない。遠隔操作型であるが、単純な破壊力ではなく重力の影響によってダメージを与えるため、本体から離れることによる破壊力低下の影響を受けない。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part6::CMoon - シー・ムーン

=cut
