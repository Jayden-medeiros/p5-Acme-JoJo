package Acme::JoJo::Character::Part7::FunnyValentine;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;

has '+name_ja' => ( default => 'ファニー・ヴァレンタイン' );
has '+name_en' => ( default => 'FunnyValentine' );
has '+has_stand' => ( default => 'D4C' );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part7::FunnyValentine - ファニー・ヴァレンタイン

=head1 SPECIAL METHODS

=cut
