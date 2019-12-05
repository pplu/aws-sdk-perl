
package Paws::FraudDetector::GetPredictionResult;
  use Moose;
  has ModelScores => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::ModelScores]', traits => ['NameInRequest'], request_name => 'modelScores' );
  has Outcomes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'outcomes' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetPredictionResult

=head1 ATTRIBUTES


=head2 ModelScores => ArrayRef[L<Paws::FraudDetector::ModelScores>]

The model scores for models used in the detector version.


=head2 Outcomes => ArrayRef[Str|Undef]

The prediction outcomes.


=head2 _request_id => Str


=cut

1;