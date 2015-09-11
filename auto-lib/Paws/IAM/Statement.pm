package Paws::IAM::Statement;
  use Moose;
  has EndPosition => (is => 'ro', isa => 'Paws::IAM::Position');
  has SourcePolicyId => (is => 'ro', isa => 'Str');
  has SourcePolicyType => (is => 'ro', isa => 'Str');
  has StartPosition => (is => 'ro', isa => 'Paws::IAM::Position');
1;
