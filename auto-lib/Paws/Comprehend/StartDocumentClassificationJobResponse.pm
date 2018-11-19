
package Paws::Comprehend::StartDocumentClassificationJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartDocumentClassificationJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier generated for the job. To get the status of the job, use
this identifier with the operation.


=head2 JobStatus => Str

The status of the job:

=over

=item *

SUBMITTED - The job has been received and queued for processing.

=item *

IN_PROGRESS - Amazon Comprehend is processing the job.

=item *

COMPLETED - The job was successfully completed and the output is
available.

=item *

FAILED - The job did not complete. For details, use the operation.

=item *

STOP_REQUESTED - Amazon Comprehend has received a stop request for the
job and is processing the request.

=item *

STOPPED - The job was successfully stopped without completing.

=back


Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;