package Acme::JoJo::Character;

use Mouse;
use UNIVERSAL::require;

has 'name_ja' => ( is => 'rw' );
has 'name_en' => ( is => 'rw' );
has '_stand' => ( is => 'rw' );
has 'lang' => (
    is => 'rw',
    default => 'ja',
);

sub _default_args {
    my $self = shift;
    return +{
        lang => $self->lang,
    };
}

sub _name {
    my $self = shift;
    return sprintf('name_%s', $self->lang);
}

sub name {
    my $self = shift;
    my $name = $self->_name;
    return $self->$name;
}

sub _prefix_stand {
    my $self = shift;
    my $name = ref $self;
    $name =~ s/(.*::Part\d+)::.*/$1/;
    $name =~ s/Character/Stand/;
    return $name;
}

sub stand {
    my $self = shift;
    my $module = sprintf('%s::%s', $self->_prefix_stand, $self->_stand);
    $module->require or die $@;
    return $module->new($self->_default_args);
}



__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Character - Base module for characters

=head1 SYNOPSIS

  use Acme::JoJo::Character::Part4::JosukeHigashikata;
  my $jojo = Acme::JoJo::Character::Part4::JosukeHigashikata->new();

=head1 DESCRIPTION

Acme::JoJo::Character is Base module for characters.

=head1 METHODS

=head2 new

=head2 name

=head2 stand

=head1 AUTHOR

Takashi Higashigata E<lt>dameo {at} cpan.orgE<gt>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

