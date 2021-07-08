
package Paws::FraudDetector::GetBatchPredictionJobsResult;
  use Moose;
  has BatchPredictions => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::BatchPrediction]', traits => ['NameInRequest'], request_name => 'batchPredictions' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetBatchPredictionJobsResult

=head1 ATTRIBUTES


=head2 BatchPredictions => ArrayRef[L<Paws::FraudDetector::BatchPrediction>]

An array containing the details of each batch prediction job.


=head2 NextToken => Str

The next token for the subsequent request.


=head2 _request_id => Str


=cut

1;