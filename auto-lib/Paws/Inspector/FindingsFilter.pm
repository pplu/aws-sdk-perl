package Paws::Inspector::FindingsFilter;
  use Moose;
  has attributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]');
  has ruleNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has rulesPackageArns => (is => 'ro', isa => 'ArrayRef[Str]');
  has severities => (is => 'ro', isa => 'ArrayRef[Str]');
  has userAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]');
1;
