
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.30',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Flip text upside-down using Unicode',
  'dist_author' => [
    'Mike Doherty <doherty@cpan.org>',
    'Marcel Grünauer <marcel@cpan.org>'
  ],
  'dist_name' => 'Text-UpsideDown',
  'dist_version' => '1.11_2',
  'license' => 'perl',
  'module_name' => 'Text::UpsideDown',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Exporter' => '0',
    'Getopt::Long' => '0',
    'Pod::Usage' => '0',
    'charnames' => '0',
    'open' => '0',
    'perl' => '5.008',
    'utf8' => '0'
  },
  'script_files' => [
    'bin/ud'
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;