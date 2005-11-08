package Catalyst::Model::Gedcom;

use base qw( Catalyst::Base Gedcom );

use strict;
use warnings;

use NEXT;

our $VERSION = '0.02';

=head1 NAME

Catalyst::Model::Gedcom - Gedcom Model Class

=head1 SYNOPSIS

	# lib/MyApp/Model/Gedcom.pm
	package MyApp::Model::Gedcom;
	
	use base qw( Catalyst::Model::Gedcom );
	
	__PACKAGE__->config(
		gedcom_file => 'root/my.ged',
		read_only   => 1
	);
	
	1;
	
	my $gedcom = $c->comp( 'MyApp::Model::Gedcom' );
	
	my @individuals = $gedcom->individuals;

=head1 DESCRIPTION

This is a model class to connect C<Gedcom> files to C<Catalyst>.

=head1 METHODS

=head2 new( )

passes your config options to C<Gedcom>'s C<new> method.

=cut

sub new {
	my( $class, $c, $options ) = @_;

	$class->Gedcom::new( %{ $class->NEXT::new( $c, $options ) } );
}

=head1 AUTHOR

=over 4 

=item * Brian Cassidy E<lt>bricas@cpan.orgE<gt>

=back

=head1 COPYRIGHT AND LICENSE

Copyright 2005 by Brian Cassidy

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=head1 SEE ALSO

=over 4 

=item * L<Catalyst>

=item * L<Gedcom>

=back

=cut

1;