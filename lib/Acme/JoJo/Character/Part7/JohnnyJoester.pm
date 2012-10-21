package Acme::JoJo::Character::Part7::JohnnyJoester;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;
with 'Acme::JoJo::Character::Role::GrowUp';

has '+name_ja' => ( default => 'ジョニィ・ジョースター' );
has '+name_en' => ( default => 'JohnnyJoester' );
has '+has_stand' => ( default => 'TuskAct1' );
has '+has_stands' => ( default => sub { ['TuskAct1','TuskAct2','TuskAct3','TuskAct4'] } );
has '+detail_ja' => ( default => <<"DETAIL_JA"
Part7の主人公。ゼッケン番号？-939．元一流騎手。19歳。ケンタッキー州生まれで、幼い頃にイギリスに住んでいたことがある。ジョニィは競馬界で有名になっていくうちに高慢な性格になっていったが、その性格のせいでトラブルを起こし銃撃を受け、下半身不随となる。その後の彼は後悔と失意に満ちた人生を送り、過去の経験から「見えない宿命に縛られている」考え方を持っていたが、スティール・ボール・ランのスタート地点で、レースに参加する謎の男ジャイロ・ツェペリと出会う。その際、彼が使う「謎の鉄球」の「回転」の余波を受け微かに脚が動いたことか生きる希望を見出し、その秘密を知るためにレースに参加。その後もジャイロとは協力関係という形で行動を共にしている。
Part8にて、ノリスケ・ヒガシカタ（東方乗助（憲助））の娘・理那と1892年に結婚しており、ジョージ・ジョースターIII世と女の子を授かったことが、家系図で判明している。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part7::JohnnyJoester - ジョニィ・ジョースター

=head1 SPECIAL METHODS

=head2 grow_up

  $johnny->grow_up;

johnny default has TuskAct1.
after first grow_up(), johnny has TuskAct2.
after second grow_up(), johnny has TuskAct3.
after third grow_up(), johnny has TuskAct4.
max number of grow_up() is 3.

=cut
