requires 'Moose';
requires 'MooseX::ClassAttribute';
requires 'Data::Compare';
requires 'URI';
requires 'Net::Amazon::Signature::V4';
requires 'JSON';
requires 'XML::Simple';
requires 'String::Util';
requires 'IO::Socket::SSL';
# For the paws CLI
requires 'Hash::Flatten';
requires 'MooseX::Getopt';
on 'test' => sub {
  requires 'Data::Path';
  requires 'YAML';
};
