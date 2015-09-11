package Paws::IAM::ContextEntry;
  use Moose;
  has ContextKeyName => (is => 'ro', isa => 'Str');
  has ContextKeyType => (is => 'ro', isa => 'Str');
  has ContextKeyValues => (is => 'ro', isa => 'ArrayRef[Str]');
1;
