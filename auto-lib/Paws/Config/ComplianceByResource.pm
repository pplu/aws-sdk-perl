package Paws::Config::ComplianceByResource;
  use Moose;
  has Compliance => (is => 'ro', isa => 'Paws::Config::Compliance');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;
