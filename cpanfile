requires 'perl' => '5.010001';
requires 'Moose';
requires 'MooseX::ClassAttribute';
requires 'HTTP::Tiny';
requires 'Throwable::Error';
requires 'Data::Compare';
requires 'URI';
requires 'Net::Amazon::Signature::V4';
requires 'JSON::MaybeXS';
requires 'XML::Simple' => '2.21';
requires 'IO::Socket::SSL';
requires 'DateTime';
requires 'DateTime::Format::ISO8601';
requires 'URL::Encode';
requires 'URL::Encode::XS';
requires 'URI::Template' => '0.23';
requires 'Config::INI';
requires 'Digest::SHA';
# For the paws CLI
requires 'DataStruct::Flat';
requires 'MooseX::Getopt';
requires 'ARGV::Struct';
requires 'Module::Find';
requires 'Getopt::Long';
recommends 'Browser::Open';
requires 'File::HomeDir';
requires 'String::CRC32';
requires 'Path::Tiny' => '0.017';
suggests "Future::Mojo";

on 'develop' => sub {
  requires 'Template';
  requires 'Pod::HTML2Pod';
  requires 'Perl::Tidy';
  requires 'Carp::Always';
  requires 'Devel::Cover';
  requires 'Data::Printer';
  requires 'Carp::Always';
  requires 'Test::Pod';
  requires 'Devel::CoverReport';
  # For developing / testing the pluggable callers
  requires 'Mojolicious';
  requires 'Future::Mojo', '>= 0.003';
  requires 'Mojo::Promise::Role::Futurify';
  requires 'EV';
  requires 'LWP::UserAgent';
  requires 'Furl';
  requires 'Pod::Checker';
  requires 'Pod::Escapes';
  requires 'Data::Munge';
};

on 'test' => sub {
  requires 'Path::Class';
  requires 'YAML';
  requires 'Test::More';
  requires 'Test::Timer';
  requires 'Test::Exception';
  requires 'Test::Warnings';
  requires 'Class::Unload';
  requires 'File::Slurper';
};
