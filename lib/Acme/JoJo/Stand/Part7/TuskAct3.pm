package Acme::JoJo::Stand::Part7::TuskAct3;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::GrowUp';

has '+name_ja' => ( default => 'タスク・アクト3' );
has '+name_en' => ( default => 'TuskAct3' );
has '+has_character' => ( default => 'JohnnyJoester' );
has '+about_ja' => ( default => '弾痕の「黄金の回転」に自らの肉体を巻き込んで、別の弾痕へと自在に移動できる。' );
has '+growing_count' => ( default => 2 );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::TuskAct3 - タスク・アクト3

=cut
