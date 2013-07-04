
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Dancer2::Core::Request" => 0,
    "Dancer2::ModuleLoader" => 0,
    "Dancer2::Test" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "JSON" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "A plugin for writing RESTful apps with Dancer2",
  "dist_author" => [
    "Dancer Core Developers"
  ],
  "dist_name" => "Dancer2-Plugin-REST",
  "dist_version" => "0.10",
  "license" => "perl",
  "module_name" => "Dancer2::Plugin::REST",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Dancer2" => 0,
    "Dancer2::Plugin" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
