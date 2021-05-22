
package Paws::FraudDetector::GetEventPredictionResult;
  use Moose;
  has ModelScores => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::ModelScores]', traits => ['NameInRequest'], request_name => 'modelScores' );
  has RuleResults => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::RuleResult]', traits => ['NameInRequest'], request_name => 'ruleResults' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetEventPredictionResult

=head1 ATTRIBUTES


=head2 ModelScores => ArrayRef[L<Paws::FraudDetector::ModelScores>]

The model scores. Amazon Fraud Detector generates model scores between
0 and 1000, where 0 is low fraud risk and 1000 is high fraud risk.
Model scores are directly related to the false positive rate (FPR). For
example, a score of 600 corresponds to an estimated 10% false positive
rate whereas a score of 900 corresponds to an estimated 2% false
positive rate.


=head2 RuleResults => ArrayRef[L<Paws::FraudDetector::RuleResult>]

The results.


=head2 _request_id => Str


=cut

1;