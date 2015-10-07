package Paws::Config::ComplianceSummary;
  use Moose;
  has ComplianceSummaryTimestamp => (is => 'ro', isa => 'Str');
  has CompliantResourceCount => (is => 'ro', isa => 'Paws::Config::ComplianceContributorCount');
  has NonCompliantResourceCount => (is => 'ro', isa => 'Paws::Config::ComplianceContributorCount');
1;
