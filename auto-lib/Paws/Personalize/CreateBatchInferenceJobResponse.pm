
package Paws::Personalize::CreateBatchInferenceJobResponse;
  use Moose;
  has BatchInferenceJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'batchInferenceJobArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateBatchInferenceJobResponse

=head1 ATTRIBUTES


=head2 BatchInferenceJobArn => Str

The ARN of the batch inference job.


=head2 _request_id => Str


=cut

1;