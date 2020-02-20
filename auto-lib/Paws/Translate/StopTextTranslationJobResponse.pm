
package Paws::Translate::StopTextTranslationJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::StopTextTranslationJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The job ID of the stopped batch translation job.


=head2 JobStatus => Str

The status of the designated job. Upon successful completion, the job's
status will be C<STOPPED>.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"COMPLETED_WITH_ERROR">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;