use strict;

use Module::Build;

my $build = Module::Build->new(
	module_name        => 'Catalyst::Model::Gedcom',
	dist_author        => 'Brian Cassidy <bricas@cpan.org>',
	license            => 'perl',
	create_readme      => 1,
	create_makefile_pl => 'traditional',
	requires           => {
		'Catalyst' => 0,
		'Gedcom'   => 0
	},
);

$build->create_build_script;