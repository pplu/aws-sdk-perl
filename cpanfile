requires 'Moose';
requires 'MooseX::ClassAttribute';
requires 'Data::Compare';
requires 'URI';
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
# For the paws CLI
requires 'Hash::Flatten';
requires 'MooseX::Getopt';
requires 'ARGV::Struct';
requires 'Module::Find';
requires 'Getopt::Long';

on 'build' => sub {
  requires 'Data::Printer';
  requires 'Template';
  requires 'File::Slurp';
  requires 'Pod::HTML2Pod';
  requires 'Dist::Zilla';
  requires 'Dist::Zilla::Plugin::Prereqs::FromCPANfile';
  requires 'Dist::Zilla::PluginBundle::Git';
};
on 'test' => sub {
  requires 'Data::Path';
  requires 'YAML';
  requires 'Test::Class::Moose::Load';
  requires 'Test::Pod';
};
