package Paws::Config::EvaluationResultQualifier;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;
