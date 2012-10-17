package Acme::JoJo::Character::Part1::JonathanJoester;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;

has '+name_ja' => ( default => 'ジョナサン・ジョースター' );
has '+name_en' => ( default => 'JonathanJoester' );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part1::JonathanJoester - ジョナサン・ジョースター

=cut
