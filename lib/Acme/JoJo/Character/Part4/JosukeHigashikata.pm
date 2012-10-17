package Acme::JoJo::Character::Part4::JosukeHigashikata;

use utf8;
use Mouse;
extends qw/Acme::JoJo::Character/;

has '+name_ja' => ( default => '東方仗助' );
has '+name_en' => ( default => 'JosukeHigashikata' );
has '+has_stand' => ( default => 'CrazyDiamond' );


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character::Part4::JosukeHigashikata - 東方仗助

=cut
