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
# For the paws CLI
requires 'Hash::Flatten';
requires 'MooseX::Getopt';
on 'test' => sub {
  requires 'Data::Path';
  requires 'YAML';
};
