
package Paws::Glue::BatchStopJobRunResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::BatchStopJobRunError]');
  has SuccessfulSubmissions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::BatchStopJobRunSuccessfulSubmission]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchStopJobRunResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Glue::BatchStopJobRunError>]

A list containing the job run Ids and details of the error that
occurred for each job run while submitting to stop.


=head2 SuccessfulSubmissions => ArrayRef[L<Paws::Glue::BatchStopJobRunSuccessfulSubmission>]

A list of job runs which are successfully submitted for stopping.


=head2 _request_id => Str


=cut

1;