
package Paws::Robomaker::DescribeWorldGenerationJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has FinishedWorldsSummary => (is => 'ro', isa => 'Paws::Robomaker::FinishedWorldsSummary', traits => ['NameInRequest'], request_name => 'finishedWorldsSummary');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template');
  has WorldCount => (is => 'ro', isa => 'Paws::Robomaker::WorldCount', traits => ['NameInRequest'], request_name => 'worldCount');
  has WorldTags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'worldTags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeWorldGenerationJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the world generation job.


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the world generation
job was created.


=head2 FailureCode => Str

The failure code of the world generation job if it failed:

=over

=item InternalServiceError

Internal service error.

=item LimitExceeded

The requested resource exceeds the maximum number allowed, or the
number of concurrent stream requests exceeds the maximum number
allowed.

=item ResourceNotFound

The specified resource could not be found.

=item RequestThrottled

The request was throttled.

=item InvalidInput

An input parameter in the request is not valid.

=back


Valid values are: C<"InternalServiceError">, C<"LimitExceeded">, C<"ResourceNotFound">, C<"RequestThrottled">, C<"InvalidInput">, C<"AllWorldGenerationFailed">
=head2 FailureReason => Str

The reason why the world generation job failed.


=head2 FinishedWorldsSummary => L<Paws::Robomaker::FinishedWorldsSummary>

Summary information about finished worlds.


=head2 Status => Str

The status of the world generation job:

=over

=item Pending

The world generation job request is pending.

=item Running

The world generation job is running.

=item Completed

The world generation job completed.

=item Failed

The world generation job failed. See C<failureCode> for more
information.

=item PartialFailed

Some worlds did not generate.

=item Canceled

The world generation job was cancelled.

=item Canceling

The world generation job is being cancelled.

=back


Valid values are: C<"Pending">, C<"Running">, C<"Completed">, C<"Failed">, C<"PartialFailed">, C<"Canceling">, C<"Canceled">
=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
world generation job.


=head2 Template => Str

The Amazon Resource Name (arn) of the world template.


=head2 WorldCount => L<Paws::Robomaker::WorldCount>

Information about the world count.


=head2 WorldTags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
generated worlds.


=head2 _request_id => Str


=cut

