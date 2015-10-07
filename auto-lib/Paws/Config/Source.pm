package Paws::Config::Source;
  use Moose;
  has Owner => (is => 'ro', isa => 'Str');
  has SourceDetails => (is => 'ro', isa => 'ArrayRef[Paws::Config::SourceDetail]');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
1;
