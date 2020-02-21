package Paws::Robomaker::SimulationJobBatchSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has CreatedRequestCount => (is => 'ro', isa => 'Int', request_name => 'createdRequestCount', traits => ['NameInRequest']);
  has FailedRequestCount => (is => 'ro', isa => 'Int', request_name => 'failedRequestCount', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has PendingRequestCount => (is => 'ro', isa => 'Int', request_name => 'pendingRequestCount', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SimulationJobBatchSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::SimulationJobBatchSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::SimulationJobBatchSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a simulation job batch.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the batch.


=head2 CreatedAt => Str

  The time, in milliseconds since the epoch, when the simulation job
batch was created.


=head2 CreatedRequestCount => Int

  The number of created simulation job requests.


=head2 FailedRequestCount => Int

  The number of failed simulation job requests.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the simulation job
batch was last updated.


=head2 PendingRequestCount => Int

  The number of pending simulation job requests.


=head2 Status => Str

  The status of the simulation job batch.

=over

=item Pending

The simulation job batch request is pending.

=item InProgress

The simulation job batch is in progress.

=item Failed

The simulation job batch failed. One or more simulation job requests
could not be completed due to an internal failure (like
C<InternalServiceError>). See C<failureCode> and C<failureReason> for
more information.

=item Completed

The simulation batch job completed. A batch is complete when (1) there
are no pending simulation job requests in the batch and none of the
failed simulation job requests are due to C<InternalServiceError> and
(2) when all created simulation jobs have reached a terminal state (for
example, C<Completed> or C<Failed>).

=item Canceled

The simulation batch job was cancelled.

=item Canceling

The simulation batch job is being cancelled.

=item Completing

The simulation batch job is completing.

=item TimingOut

The simulation job batch is timing out.

If a batch timing out, and there are pending requests that were failing
due to an internal failure (like C<InternalServiceError>), the batch
status will be C<Failed>. If there are no such failing request, the
batch status will be C<TimedOut>.

=item TimedOut

The simulation batch job timed out.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

