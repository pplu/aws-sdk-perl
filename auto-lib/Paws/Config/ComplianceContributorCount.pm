package Paws::Config::ComplianceContributorCount;
  use Moose;
  has CapExceeded => (is => 'ro', isa => 'Bool');
  has CappedCount => (is => 'ro', isa => 'Int');
1;
