package Acme::JoJo::Stand::Part7::D4CLoveTrain;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::SaintDeadBody';
use Acme::JoJo::Constants qw( :saint_dead_body );

has '+name_ja' => ( default => 'ディー・フォー・シー・ラブトレイン' );
has '+name_en' => ( default => 'D4CLoveTrain' );
has '+has_character' => ( default => 'FunnyValentine' );
has '+description_ja' => ( default => '聖人の遺体と一体化したルーシーを基点に生まれた「空間の隙間」に入り込む事で、自らに加えられた害悪を退ける。退けられた害悪は世界のどこかで誰かが強制的に被る事になる。' );
has '+has_perfect_saint_dead_body' => ( default => YES );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::D4CLoveTrain - ディー・フォー・シー・ラブトレイン

=cut
