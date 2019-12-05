
package Paws::SageMaker::CreateProcessingJobResponse;
  use Moose;
  has ProcessingJobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateProcessingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProcessingJobArn => Str

The Amazon Resource Name (ARN) of the processing job.


=head2 _request_id => Str


=cut

1;