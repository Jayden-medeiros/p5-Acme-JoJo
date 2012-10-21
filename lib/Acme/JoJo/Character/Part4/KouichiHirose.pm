package Acme::JoJo::Character::Part4::KouichiHirose;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;
with 'Acme::JoJo::Character::Role::GrowUp';

has '+name_ja' => ( default => '広瀬康一' );
has '+name_en' => ( default => 'KouichiHirose' );
has '+has_stand' => ( default => 'EchoesAct1' );
has '+has_stands' => ( default => sub { ['EchoesAct1','EchoesAct2','EchoesAct3'] } );
has '+detail_ja' => ( default => <<"DETAIL_JA"
仗助の同級生。今作の語り部。1984年3月28日生まれ。牡羊座。設定上の身長は157cmだが、作中ではそれより低く描かれている。両親と姉との4人暮らしで老犬ポリスを飼っている。当初は一般人だったが、虹村形兆にスタンドの矢で射抜かれスタンド使いとなる。
最初はどこか頼りない性格だったが、自分で窮地を乗り越えていく度に人間的に成長していき、仗助たちから強く信頼されるようになる。特に承太郎や露伴からの信頼は厚い。また、一癖ある人物からも好かれる性質で、露伴は彼を親友と言い、由花子は異常に彼を愛し、敵として交戦経験もあった玉美や間田からも親しくされている。当初は由花子の求愛に引き気味であったが、和解を申し出たのち、辻彩によるスタンドメイク術を経て彼女に想いを寄せる。メイク効果が切れた後も変わらず、むしろ由花子の内面的な魅力に惚れこみ、晴れて両思いとなった。由花子の顔が元通りにならなかった場合、自分に見られるのが嫌だろうと考えそれなら自分の両目を見えなくさせるよう求めるなど、真剣に由花子を愛しており、その行動が辻彩の心を動かした。
Part5の序盤にも登場。そのためプレイステーション2用ゲーム『ジョジョの奇妙な冒険 黄金の旋風』に登場予定であったが事情により未登場となった。名字の由来は、宮城県仙台市を流れる河川「広瀬川」。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part4::KouichiHirose - 広瀬康一

=head1 SPECIAL METHODS

=head2 grow_up

  $kouichi_kun->grow_up;

kouichi_kun default has EchoesAct1.
after first grow_up(), kouichi_kun has EchoesAct2.
after second grow_up(), kouichi_kun has EchoesAct3.
max number of grow_up() is 2.

=cut
