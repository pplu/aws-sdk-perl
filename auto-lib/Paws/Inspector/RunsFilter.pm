package Paws::Inspector::RunsFilter;
  use Moose;
  has completionTime => (is => 'ro', isa => 'Paws::Inspector::TimestampRange');
  has creationTime => (is => 'ro', isa => 'Paws::Inspector::TimestampRange');
  has rulesPackages => (is => 'ro', isa => 'ArrayRef[Str]');
  has runNamePatterns => (is => 'ro', isa => 'ArrayRef[Str]');
  has runStates => (is => 'ro', isa => 'ArrayRef[Str]');
1;
