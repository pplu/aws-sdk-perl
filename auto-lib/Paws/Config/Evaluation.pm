package Paws::Config::Evaluation;
  use Moose;
  has Annotation => (is => 'ro', isa => 'Str');
  has ComplianceResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ComplianceResourceType => (is => 'ro', isa => 'Str', required => 1);
  has ComplianceType => (is => 'ro', isa => 'Str', required => 1);
  has OrderingTimestamp => (is => 'ro', isa => 'Str', required => 1);
1;
