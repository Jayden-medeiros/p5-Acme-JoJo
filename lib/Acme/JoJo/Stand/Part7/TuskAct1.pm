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


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::TuskAct1 - タスク・アクト1

=cut
