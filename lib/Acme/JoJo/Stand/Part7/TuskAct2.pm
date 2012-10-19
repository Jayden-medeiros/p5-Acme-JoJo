package Acme::JoJo::Stand::Part7::TuskAct2;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'タスク・アクト2' );
has '+name_en' => ( default => 'TuskAct2' );
has '+has_character' => ( default => 'JohnnyJoester' );
has '+about_ja' => ( default => '「黄金の回転」の軌跡で回転する爪弾の弾痕が自動的に敵を追尾し、敵が触れると破壊する。' );
has '+growing_count' => ( default => 1 );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::TuskAct2 - タスク・アクト2

=cut
