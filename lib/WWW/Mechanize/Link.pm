package WWW::Mechanize::Link;

=head1 NAME

WWW::Mechanize::Link - link object for Mechanize

=head1 SYNOPSIS

Link object to encapsulate all the stuff that Mech needs but nobody
wants to deal with as an array.

=cut

use strict;
use warnings;

=head1 Constructor

=head2 C<< new( I<$url>, I<$text>, I<$name> ) >>

Creates and returns a new WWW::Mechanize::Link object.

=cut

sub new {
    my $class = shift;

    my $url = shift;
    my $text = shift;
    my $name = shift;

    my $self = [$url,$text,$name];

    bless $self, $class;

    return $self;
}

sub url {
    my $self = shift;
    return $self->[0];
}

sub text {
    my $self = shift;
    return $self->[1];
}

sub name {
    my $self = shift;
    return $self->[2];
}

=head1 Author

Copyright 2003 Andy Lester <andy@petdance.com>

Released under the Artistic License.  Based on Kirrily Robert's excellent
L<WWW::Automate> package.

=cut

1;