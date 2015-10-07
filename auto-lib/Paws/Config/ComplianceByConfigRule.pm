package Paws::Config::ComplianceByConfigRule;
  use Moose;
  has Compliance => (is => 'ro', isa => 'Paws::Config::Compliance');
  has ConfigRuleName => (is => 'ro', isa => 'Str');
1;
