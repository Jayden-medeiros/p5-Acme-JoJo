package Acme::JoJo::Character::Part6::WeatherReport;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;
with 'Acme::JoJo::Character::Role::MemoryDisc';

has '+name_ja' => ( default => 'ウェザー・リポート' );
has '+name_en' => ( default => 'WeatherReport' );
has '+has_stand' => ( default => 'WeatherReport' );
has '+has_another_stand' => ( default => 'HeavyWeather' );
has '+detail_ja' => ( default => <<"DETAIL_JA"
謎の男囚。プッチ神父によって記憶の大半を奪われており、記憶を取り戻すために徐倫に協力する。記憶がないので寡黙な性格だが、基本的には優しく頼りになる男。
物語終盤に記憶のディスクを取り戻し、本名はウェス・ブルーマリンであり、非常に危険な性格と、人を無差別にカタツムリに変えてしまう凶悪な能力「ヘビー・ウェザー」を持つことが判明。ウェザー自身も知らないことだが、実はエンリコ・プッチ神父の双子の弟「ドメニコ・プッチ」であり、生まれたときに死んだ赤ん坊（本物のウェス）とすり替えられ、ブルーマリン家の子供として育てられ、ドメニコ・プッチは死んだことになっていた。プッチ神父がそのことを偶然知った頃、ウェザーはエンリコの妹ペルラ・プッチと交際していた（つまり、知らずのうちに自分の実の妹と付き合っていたことになる）。プッチ神父はどちらにも知られないように何でも屋の男に依頼し、二人を別れさせようとするが、依頼を受けた男は戸籍上黒人であったウェザーが白人であるペルラとつきあっている事に憤慨し、KKKの一団と共にウェザーに暴行を加えて木に吊し上げ、それを見たペルラはウェザーが死んだと思い込み崖から身を投げて自殺してしまう。意識を取り戻したウェザーは彼女の後を追うべく自殺を図るが、スタンドが無意識に自身を守ったため失敗。ペルラの命を奪った町の人間に憎しみを抱き、双子の兄エンリコ・プッチが「矢」でスタンド能力に目覚めるのに呼応する形で能力に目覚め、「ヘビー・ウェザー」により自分達を不幸に陥れた男たちを始末し、プッチ神父をも殺そうとするが、彼の「私はお前の兄である」という言葉で生じた隙を突かれてホワイトスネイクの能力により記憶を奪われ、G.D.st刑務所に収監される。血縁関係故かプッチ神父が「DIO」の骨から生まれた緑色の赤ちゃんと合体し、背中に星型のアザが現れた時には、同時に彼の背中にも同様のものが現れた。物語終盤においてプッチ神父と死闘を演じ、止めを刺す寸前まで追い詰めるも、ヘビー・ウェザーによってコントロールを失った車が突っ込み形勢が逆転、殺害されるが、死の間際にホワイトスネイクの攻撃を利用して自らのスタンドをDISC化し、徐倫達に全てを託して絶命。彼のDISCは時を加速させる能力を得たプッチ神父を打倒する鍵となった。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part6::WeatherReport - ウェザー・リポート

=head1 SPECIAL METHODS

=head2 insert_memory_disc

  $weather->insert_memory_disc unless $weather->has_memory_disc;

If the weather get memory disc, the weather has HeavyWeather.

=head2 eject_memory_disc

  $weather->eject_memory_disc if $weather->has_memory_disc;

If the weather lose memory disc, the weather has WeatherReport.

=cut
