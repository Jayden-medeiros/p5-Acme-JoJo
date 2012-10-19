package Acme::JoJo::Stand::Part7::TuskAct1;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'タスク・アクト1' );
has '+name_en' => ( default => 'TuskAct1' );
has '+has_character' => ( default => 'JohnnyJoester' );
has '+about_ja' => ( default => '爪を高速回転させて、銃弾のように発射する。発射せず指に留めたまま、あたかも電動ノコギリやスクリューのように使う事もできる。回転速度は調節が利くらしく、歯を磨いたりパスタを巻き取って食べたり、繊細な使い方もできる。' );
has '+growing_count' => ( default => 0 );
has '+detail_ja' => ( default => <<"DETAIL_JA"
自身の爪を高速に回転させて、弾丸のように発射したり、物体を切り裂くスタンド。ジョニィがジャイロから回転の極意を学んだことによりスタンド像が成長し人形のような姿（ACT1）から、やがて人型（ACT4）へと変化していった。このスタンド像は「チュミーン」と鳴き声のようなものを発する。当初は遺体がなければスタンド能力が使えなかったが、成長によるものかすべての遺体を取られても能力を使えるようになった。またPart4に登場する広瀬康一のエコーズのように成長前のACTを使い分けることができる。
スタンドが発現した際にジョニィが「これはもはや爪ではない」と語り牙（タスク）と命名したが、作中では「爪弾」などの呼称もあり単行本22巻におけるスタンドの説明では「爪（タスク）」と表記されている。

指の爪を回転することによってエネルギーを得て爪を弾丸のように飛ばす。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::TuskAct1 - タスク・アクト1

=cut
