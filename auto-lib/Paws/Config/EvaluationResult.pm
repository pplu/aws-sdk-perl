package Paws::Config::EvaluationResult;
  use Moose;
  has Annotation => (is => 'ro', isa => 'Str');
  has ComplianceType => (is => 'ro', isa => 'Str');
  has ConfigRuleInvokedTime => (is => 'ro', isa => 'Str');
  has EvaluationResultIdentifier => (is => 'ro', isa => 'Paws::Config::EvaluationResultIdentifier');
  has ResultRecordedTime => (is => 'ro', isa => 'Str');
  has ResultToken => (is => 'ro', isa => 'Str');
1;
