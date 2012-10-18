package Acme::JoJo::Stand::Part7::D4C;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Stand/;

has '+name_ja' => ( default => 'ディー・フォー・シー' );
has '+name_en' => ( default => 'DirtyDeedsDoneDirtCheap' );
has '+has_character' => ( default => 'FunnyValentine' );
has '+description_ja' => ( default => 'パラレルワールドを物質を通じて行来でき、パラレルワールドの出来事を同じ場所に存在させられる。' );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand::Part7::D4C - ディー・フォー・シー

=cut
