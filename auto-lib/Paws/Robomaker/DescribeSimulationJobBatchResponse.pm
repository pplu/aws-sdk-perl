
package Paws::Robomaker::DescribeSimulationJobBatchResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has BatchPolicy => (is => 'ro', isa => 'Paws::Robomaker::BatchPolicy', traits => ['NameInRequest'], request_name => 'batchPolicy');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedRequests => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationJobSummary]', traits => ['NameInRequest'], request_name => 'createdRequests');
  has FailedRequests => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::FailedCreateSimulationJobRequest]', traits => ['NameInRequest'], request_name => 'failedRequests');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has PendingRequests => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationJobRequest]', traits => ['NameInRequest'], request_name => 'pendingRequests');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeSimulationJobBatchResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the batch.


=head2 BatchPolicy => L<Paws::Robomaker::BatchPolicy>

The batch policy.


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the simulation job
batch was created.


=head2 CreatedRequests => ArrayRef[L<Paws::Robomaker::SimulationJobSummary>]

A list of created simulation job summaries.


=head2 FailedRequests => ArrayRef[L<Paws::Robomaker::FailedCreateSimulationJobRequest>]

A list of failed create simulation job requests. The request failed to
be created into a simulation job. Failed requests do not have a
simulation job ID.


=head2 FailureCode => Str

The failure code of the simulation job batch.

Valid values are: C<"InternalServiceError">
=head2 FailureReason => Str

The reason the simulation job batch failed.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the simulation job
batch was last updated.


=head2 PendingRequests => ArrayRef[L<Paws::Robomaker::SimulationJobRequest>]

A list of pending simulation job requests. These requests have not yet
been created into simulation jobs.


=head2 Status => Str

The status of the batch.

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


Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Completed">, C<"Canceled">, C<"Canceling">, C<"Completing">, C<"TimingOut">, C<"TimedOut">
=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
simulation job batch.


=head2 _request_id => Str


=cut

