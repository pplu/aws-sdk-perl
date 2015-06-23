requires 'Moose';
requires 'MooseX::ClassAttribute';
requires 'Throwable::Error';
requires 'Data::Compare';
requires 'URI';
requires 'Net::Amazon::Signature::V3';
requires 'Net::Amazon::Signature::V4';
requires 'JSON';
requires 'XML::Simple';
requires 'String::Util';
requires 'IO::Socket::SSL';
requires 'DateTime';
requires 'DateTime::Format::ISO8601';
requires 'URL::Encode';
requires 'URL::Encode::XS';
requires 'URI::Template';
requires 'Digest::HMAC';
requires 'Config::INI';
# For the paws CLI
requires 'Hash::Flatten';
requires 'MooseX::Getopt';
requires 'ARGV::Struct';
requires 'Module::Find';
requires 'Getopt::Long';
requires 'Browser::Open';

on 'develop' => sub {
  requires 'Template';
  requires 'Pod::HTML2Pod';
  requires 'Dist::Zilla';
  requires 'Dist::Zilla::Plugin::Prereqs::FromCPANfile';
  requires 'Dist::Zilla::Plugin::VersionFromModule';
  requires 'Dist::Zilla::PluginBundle::Git';
  requires 'Carp::Always';
  requires 'Devel::Cover';
};
on 'test' => sub {
  requires 'Data::Printer';
  requires 'File::Slurp';
  requires 'Data::Path';
  requires 'YAML';
  requires 'Test::Class::Moose::Load';
  requires 'Test::Pod';
  requires 'Hash::MD5';
};
