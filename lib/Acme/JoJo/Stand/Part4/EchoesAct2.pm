package Acme::JoJo::Stand::Part4::EchoesAct2;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'エコーズ・アクト2' );
has '+name_en' => ( default => 'EchoesAct2' );
has '+has_character' => ( default => 'KouichiHirose' );
has '+description_ja' => ( default => 'しっぽを擬音へと変えて、その擬音通りの現象を発生させる。' );
has '+growing_count' => ( default => 1 );



__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part4::EchoesAct2 - エコーズ・アクト2

=cut
