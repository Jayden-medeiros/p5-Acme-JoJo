package Acme::JoJo::Character::Part6::EnricoPucci;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;
with 'Acme::JoJo::Character::Role::StairwayToHeaven';

has '+name_ja' => ( default => 'エンリコ・プッチ' );
has '+name_en' => ( default => 'EnricoPucci' );
has '+has_stand' => ( default => 'WhiteSnake' );
has '+has_stands' => ( default => sub { ['WhiteSnake','CMoon','MadeInHeaven'] } );
has '+detail_ja' => ( default => <<"DETAIL_JA"
G.D.st刑務所の教誨師。1972年6月5日生まれ。39歳。生まれた時、左足の指が歩くのに苦労するくらいに変形していた。素数を愛し、素数を数える事で自分を落ち着かせる。貝類にアレルギーがある。運命を克服することになによりも拘る。
聖職者らしく物腰は穏やかだが、自分の行いは全て神の意思であり、正しい事であると信じて疑わず、目的達成の為なら他人を犠牲にすることも許されるといった発言をするなどその性格は極めて独善的であり、ヴェルサスが自分を出し抜こうとしていることを知った際は彼を激しく罵るなど、親友DIOの息子達ですら自分を守るための道具のように扱っている。そのため双子の弟であるウェザー･リポート（ドメニコ･プッチ）には「自分が悪だと気付いていない、最もドス黒い悪」と言い放たれる。
修行時代にジョースター家の宿敵「DIO」と出会い、彼をかくまった礼として生まれつき変形していた左足の指を元通りに治してもらったことがきっかけで彼の友人となり、「矢」の鏃を受け取る。後にそれがきっかけとなってスタンド能力を得る事になった。そして「DIO」から全人類を幸福へと導く「天国へ行く方法」を聞く。それを記した文書があったが、「DIO」を倒した後に承太郎が処分したことから彼を呼び寄せる謀略を考える。そして、彼の記憶のディスクを読むことによって「天国へ行く方法」を知りそれを実行させることに。父の記憶を取り戻すため追ってきた徐倫らに対し、ディスクでスタンド使いとした刺客を差し向ける。更に「天国へ行く方法」の手順を進める事により、スタンドが進化する。
「DIO」の骨から生まれた緑色の赤子との合体により、その背中にはかつて「DIO」が奪ったジョナサン・ジョースターの肉体と同様の星型のアザが現れ、ジョナサンの子孫にあたるジョースター家の血を引く人間(徐倫や承太郎)の「存在」を感じる能力を身につけた。さらに、スタンドも重力を操る「C-MOON」に進化、最終的に時を加速させる「メイド・イン・ヘブン」に進化する。
ケープ・カナベラルにおける最終決戦では、メイド・イン・ヘブンの時の加速によりエルメェス、アナスイ、徐倫、時を止められる承太郎をも抹殺するが、エンポリオには逃げられてしまい、時が極限まで加速したことにより到達したパラレルワールド「一巡後の世界」で決着をつけようとする。エンポリオをかつての彼の部屋まで追い詰めるが、ウェザー・リポートの能力を得たエンポリオが純粋酸素を部屋に充満させたことで酸素中毒により体の自由を奪われ、そこにウェザー・リポートのラッシュを叩き込まれ死亡した。且つ、時の加速が開始したケープ・カナベラル以前でプッチが死んだ事により宇宙の一巡は完遂されず、完成しかけていた「天国」も消滅した。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part6::EnricoPucci - エンリコ・プッチ

=head1 SPECIAL METHODS

=head2 unite_with_the_green_baby

  $father->unite_with_the_green_baby();

The green baby is needed to up the stairway to heaven.

=head2 reach_at_capecanaveral

  $father->reach_at_capecanaveral() if $father->already_united;

If father had already united the green baby, father are ready to go to cape canaveral.
If father reach at cape canaveral, father's has C-MOON.

=head2 reach_at_position_of_reduced_gravity

  $father->position_of_reduced_gravity();

If father reach at position of reduced gravity, father's has MadeInHeaven.

=cut
