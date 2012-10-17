package Acme::JoJo;
use strict;
use warnings;
our $VERSION = '0.01';
use Mouse;
use UNIVERSAL::require;
use File::Zglob;

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

sub characters {
    my $self = shift;
    my $args = ref $_[0] eq 'HASH' ? $_[0] : {@_};
    my @modules = $self->_get_modules({ prefix => 'Character', %$args });
    return $self->_load_modules(@modules);
}

sub stands {
    my $self = shift;
    my $args = ref $_[0] eq 'HASH' ? $_[0] : {@_};
    my @modules = $self->_get_modules({ prefix => 'Stand', %$args });
    return $self->_load_modules(@modules);
}

sub _base_search_path {
    my $name = __PACKAGE__;
    $name =~ s!::!/!;
    my $file = sprintf('%s.pm', $name);
    my $path = $INC{$file};
    $path =~ s!\.pm!/!;
    return $path;
}

sub _search_files {
    my $self = shift;
    my $args = shift;
    return zglob( sprintf('%s%s/**/*.pm', $args->{path}, $args->{prefix}) );
}

sub _get_modules {
    my $self = shift;
    my $args = shift;
    my $prefix = $args->{prefix};
    my $part_num = defined $args->{part} ? $args->{part} : '*';
    $prefix = sprintf('%s/Part%s', $prefix, $part_num);
    return $self->_search_files({ path => $self->_base_search_path, prefix => $prefix });
}

sub _requirable_format {
    my $self = shift;
    my $name = shift;
    $name =~ s!.*(Acme/JoJo/.*/Part\d+/.*)\.pm$!$1!;
    $name =~ s!/!::!g;
    return $name;
}

sub _load_modules {
    my $self = shift;
    my @modules = @_;
    my @loaded_modules;
    for my $module ( @modules ) {
        $module = $self->_requirable_format( $module );
        $module->require or die $@;
        push @loaded_modules, $module->new($self->_default_args);
    }
    return @loaded_modules;
}


__PACKAGE__->meta->make_immutable();

no Mouse;

1;
__END__

=head1 NAME

Acme::JoJo - Information of JoJo's Bizarre adventure

=head1 SYNOPSIS

  use Acme::JoJo;
  my $jojo = Acme::JoJo->new();

=head1 DESCRIPTION

Acme::JoJo is Information of JoJo's Bizarre adventure.

=head1 METHODS

=head2 new

=head2 characters

=head2 stands

=head1 AUTHOR

Takashi Higashigata E<lt>dameo {at} cpan.orgE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
