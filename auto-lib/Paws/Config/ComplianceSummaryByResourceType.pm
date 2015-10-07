package Paws::Config::ComplianceSummaryByResourceType;
  use Moose;
  has ComplianceSummary => (is => 'ro', isa => 'Paws::Config::ComplianceSummary');
  has ResourceType => (is => 'ro', isa => 'Str');
1;
