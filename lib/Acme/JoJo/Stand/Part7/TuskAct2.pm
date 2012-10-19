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
has '+detail_ja' => ( default => <<"DETAIL_JA"
「黄金長方形」から見出した「黄金の回転」の跡で爪を回転させる事で、打った爪弾の弾痕が自動的に目標を追尾して破壊する。この自動追尾の弾痕はヴァレンタインの能力で隣の世界に移動させる事はできず、確実に目標を攻撃するまで回転が持続する。ただし、ACT1と違って弾数に制限があり、両手の指の数である10発を撃ち尽くすと、新たな爪が再生するまで待たねばならない（ハーブを集めると爪の再生が速くなり、カモミールを混ぜるとより効果的になる）。
DETAIL_JA
);


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::TuskAct2 - タスク・アクト2

=cut
