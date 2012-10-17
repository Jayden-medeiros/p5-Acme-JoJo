package Acme::JoJo::Stand;

use Mouse;
use UNIVERSAL::require;

has 'name_ja' => ( is => 'rw' );
has 'name_en' => ( is => 'rw' );
has 'description_ja' => ( is => 'rw' );
has 'has_character' => ( is => 'rw' );
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

sub _description {
    my $self = shift;
    return 'description_ja'; # XXX if you can write description with another langueage
}

sub description {
    my $self = shift;
    my $description = $self->_description;
    return $self->$description;
}

sub _prefix_character {
    my $self = shift;
    my $name = ref $self;
    $name =~ s/(.*::Part\d+)::.*/$1/;
    $name =~ s/Stand/Character/;
    return $name;
}

sub character {
    my $self = shift;
    return unless $self->has_character;
    my $module = sprintf('%s::%s', $self->_prefix_character, $self->has_character);
    $module->require or die $@;
    return $module->new($self->_default_args);
}



__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo::Stand - Base module for stands

=head1 SYNOPSIS

  use Acme::JoJo::Stand::Part4::CrazyDiamond;
  my $stand = Acme::JoJo::Stand::Part4::CrazyDiamond->new();

=head1 DESCRIPTION

Acme::JoJo::Stand is Base module for stands.

=head1 METHODS

=head2 new

=head2 name

=head2 description

=head2 character

=head1 AUTHOR

Takashi Higashigata E<lt>dameo {at} cpan.orgE<gt>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

