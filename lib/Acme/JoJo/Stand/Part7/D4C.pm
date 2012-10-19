package Acme::JoJo::Stand::Part7::D4C;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;
with 'Acme::JoJo::Stand::Role::SaintDeadBody';
use Acme::JoJo::Constants qw( :saint_dead_body );

has '+name_ja' => ( default => 'ディー・フォー・シー' );
has '+name_en' => ( default => 'DirtyDeedsDoneDirtCheap' );
has '+has_character' => ( default => 'FunnyValentine' );
has '+about_ja' => ( default => 'パラレルワールドを物質を通じて行来でき、パラレルワールドの出来事を同じ場所に存在させられる。' );
has '+has_perfect_saint_dead_body' => ( default => NO );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::D4C - ディー・フォー・シー

=cut
