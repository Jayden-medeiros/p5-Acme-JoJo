package Acme::JoJo::Stand::Part7::TuskAct4;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'タスク・アクト4' );
has '+name_en' => ( default => 'TuskAct4' );
has '+has_character' => ( default => 'JohnnyJoester' );
has '+description_ja' => ( default => '馬の生み出した「黄金の回転」のエネルギーにより、対象に無限かつ脱出不可能なダメージを与える。' );
has '+growing_count' => ( default => 3 );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::TuskAct4 - タスク・アクト4

=cut
