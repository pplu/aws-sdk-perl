package Paws::Config::Scope;
  use Moose;
  has ComplianceResourceId => (is => 'ro', isa => 'Str');
  has ComplianceResourceTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has TagKey => (is => 'ro', isa => 'Str');
  has TagValue => (is => 'ro', isa => 'Str');
1;
