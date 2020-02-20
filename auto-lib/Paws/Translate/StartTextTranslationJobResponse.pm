
package Paws::Translate::StartTextTranslationJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::StartTextTranslationJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier generated for the job. To get the status of a job, use
this ID with the DescribeTextTranslationJob operation.


=head2 JobStatus => Str

The status of the job. Possible values include:

=over

=item *

C<SUBMITTED> - The job has been received and is queued for processing.

=item *

C<IN_PROGRESS> - Amazon Translate is processing the job.

=item *

C<COMPLETED> - The job was successfully completed and the output is
available.

=item *

C<COMPLETED_WITH_ERRORS> - The job was completed with errors. The
errors can be analyzed in the job's output.

=item *

C<FAILED> - The job did not complete. To get details, use the
DescribeTextTranslationJob operation.

=item *

C<STOP_REQUESTED> - The user who started the job has requested that it
be stopped.

=item *

C<STOPPED> - The job has been stopped.

=back


Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"COMPLETED_WITH_ERROR">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;