
package Paws::Comprehend::StopPiiEntitiesDetectionJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StopPiiEntitiesDetectionJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier of the PII entities detection job to stop.


=head2 JobStatus => Str

The status of the PII entities detection job.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;