
package Paws::Personalize::DescribeBatchInferenceJobResponse;
  use Moose;
  has BatchInferenceJob => (is => 'ro', isa => 'Paws::Personalize::BatchInferenceJob', traits => ['NameInRequest'], request_name => 'batchInferenceJob' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeBatchInferenceJobResponse

=head1 ATTRIBUTES


=head2 BatchInferenceJob => L<Paws::Personalize::BatchInferenceJob>

Information on the specified batch inference job.


=head2 _request_id => Str


=cut

1;