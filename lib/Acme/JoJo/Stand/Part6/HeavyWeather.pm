package Acme::JoJo::Stand::Part6::HeavyWeather;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;

has '+name_ja' => ( default => 'ヘビー・ウェザー' );
has '+name_en' => ( default => 'HeavyWeather' );
has '+has_character' => ( default => 'WeatherReport' );
has '+about_ja' => ( default => '天然のサブリミナル映像「悪魔の虹」を作り出し、それに触れた者をカタツムリ化する。' );
has '+detail_ja' => ( default => <<"DETAIL_JA"
物語終盤においてウェザーが記憶を取り戻した事により発現したウェザー・リポートの隠された能力。オゾン層に手を加える事で生み出したサブリミナル映像「悪魔の虹」に触れた者を徐々にカタツムリへと変え、身体能力を著しく低下させる。カタツムリに変化した対象に触れた者にも同様の効果が発現する。ただし、サブリミナル映像という性質上盲目の相手に対しては効果がなく、この能力自体も本体のウェザーすら制御できない。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part6::HeavyWeather - ヘビー・ウェザー

=cut
