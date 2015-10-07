package Paws::Config::Compliance;
  use Moose;
  has ComplianceContributorCount => (is => 'ro', isa => 'Paws::Config::ComplianceContributorCount');
  has ComplianceType => (is => 'ro', isa => 'Str');
1;
