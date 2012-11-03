package Acme::JoJo::Stand::Part6::WhiteSnake;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::StairwayToHeaven';
use Acme::JoJo::Constants qw( :common :stair_way_to_heaven );

has '+name_ja' => ( default => 'ホワイトスネイク' );
has '+name_en' => ( default => 'WhiteSnake' );
has '+has_character' => ( default => 'EnricoPucci' );
has '+already_united' => ( default => NO );
has '+number_of_stages' => ( default => NUMBER_OF_STAGES_FIRST );
has '+about_ja' => ( default => '遠隔操作型。魂を記憶とスタンドの２枚の「DISC」にして取り出す。幻覚を見せたり、記憶の「DISC」で命令をすることもできる' );
has '+detail_ja' => ( default => <<"DETAIL_JA"
人型のスタンド。塩基配列の描かれた包帯状のラインが全身に走っており、顔の上半分と肩、腰の辺りは紫色の装飾品のようなもので覆われている。半径20m以内の遠隔操作で、人の記憶とスタンド能力を「ディスク」化させて奪い取ったり読んだりすることができ、またディスクを介して人や物を操ることもでき、「10m吹っ飛んでから破裂する」という物理的に不可能なことでも実行させることが可能。生物の行動だけでなく、物の状態をもディスクに込めた命令通りにする事も出来る。劇中では少ないが、プッチの命令に返答する場面もあり、自意識を持っていると思われる。
ディスク化には以下2通りの方法が確認されている。
1.幻覚を見せてディスク化する
スタンドから一定の範囲にいる者にプッチ任意の「幻覚」を見せ、その間に対象者の心と肉体を「溶かす」ことによってディスクを得る。承太郎がこの方法でディスクを抜き取られている他、エンポリオの母親もこの方法で殺害されたとする描写がある。また、幻覚の能力を単体で使うことも可能。安全な場所から能力を行使できるが、溶けるまで時間がかかり、幻覚だと見破られる場合もある。
2.本体が直接触る
対象者に直接触れることでディスクを抜き取ることができる。ただし、接近しなければならないため、正体を知られたり、本体が攻撃を受ける危険がある。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part6::WhiteSnake - ホワイトスネイク

=cut
