requires 'Moose';
requires 'MooseX::ClassAttribute';
requires 'Data::Compare';
requires 'URI';
requires 'Net::Amazon::Signature::V4';
requires 'JSON';
requires 'XML::Simple';
requires 'String::Util';
requires 'IO::Socket::SSL';
on 'test' => sub {
  requires 'YAML';
};
