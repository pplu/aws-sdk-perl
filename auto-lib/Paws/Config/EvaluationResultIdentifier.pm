package Paws::Config::EvaluationResultIdentifier;
  use Moose;
  has EvaluationResultQualifier => (is => 'ro', isa => 'Paws::Config::EvaluationResultQualifier');
  has OrderingTimestamp => (is => 'ro', isa => 'Str');
1;
