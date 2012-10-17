package Acme::JoJo::Character::Part4::KouichiHirose;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;

has '+name_ja' => ( default => '広瀬康一' );
has '+name_en' => ( default => 'KouichiHirose' );
has '+has_stand' => ( default => 'EchoesAct1' );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part4::KouichiHirose - 広瀬康一

=cut
