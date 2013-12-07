
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
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
  "dist_version" => "0.21",
  "license" => "perl",
  "module_name" => "Dancer2::Plugin::REST",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Class::Load" => 0,
    "Dancer2" => 0,
    "Dancer2::Plugin" => 0,
    "Moo::Role" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [],
  "test_requires" => {
    "Dancer2::Core::Request" => 0,
    "Dancer2::Test" => 0,
    "Data::Dumper" => 0,
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "File::Spec::Functions" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "JSON" => 0,
    "LWP::UserAgent" => 0,
    "List::Util" => 0,
    "Test::More" => 0,
    "Test::TCP" => 0
  }
);


my %fallback_build_requires = (
  "Dancer2::Core::Request" => 0,
  "Dancer2::Test" => 0,
  "Data::Dumper" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "File::Spec::Functions" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "JSON" => 0,
  "LWP::UserAgent" => 0,
  "List::Util" => 0,
  "Module::Build" => "0.3601",
  "Test::More" => 0,
  "Test::TCP" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
