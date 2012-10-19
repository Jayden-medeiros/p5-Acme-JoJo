package Acme::JoJo::Stand::Part4::EchoesAct2;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'エコーズ・アクト2' );
has '+name_en' => ( default => 'EchoesAct2' );
has '+has_character' => ( default => 'KouichiHirose' );
has '+about_ja' => ( default => 'しっぽを擬音へと変えて、その擬音通りの現象を発生させる。' );
has '+growing_count' => ( default => 1 );
has '+detail_ja' => ( default => <<"DETAIL_JA"
「ACT1」が進化した姿で、やや小型化したエコーズ。射程はACT1と変わらない。ACT1よりスピードが格段に上昇し、尻尾を切り離して変形させたしっぽ文字に触れた者に文字に応じた擬音の効果を体感させる能力を持つ。文字はACT1同様物体に貼り付けることも可能。
DETAIL_JA
);



__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part4::EchoesAct2 - エコーズ・アクト2

=cut
