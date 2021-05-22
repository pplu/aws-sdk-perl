
package Paws::Robomaker::CreateWorldExportJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has IamRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRole');
  has OutputLocation => (is => 'ro', isa => 'Paws::Robomaker::OutputLocation', traits => ['NameInRequest'], request_name => 'outputLocation');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateWorldExportJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the world export job.


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the world export job
was created.


=head2 FailureCode => Str

The failure code of the world export job if it failed:

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

=item AllWorldGenerationFailed

All of the worlds in the world generation job failed. This can happen
if your C<worldCount> is greater than 50 or less than 1.

=back

For more information about troubleshooting WorldForge, see
Troubleshooting Simulation WorldForge
(https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting-worldforge.html).

Valid values are: C<"InternalServiceError">, C<"LimitExceeded">, C<"ResourceNotFound">, C<"RequestThrottled">, C<"InvalidInput">, C<"AccessDenied">
=head2 IamRole => Str

The IAM role that the world export process uses to access the Amazon S3
bucket and put the export.


=head2 OutputLocation => L<Paws::Robomaker::OutputLocation>




=head2 Status => Str

The status of the world export job.

=over

=item Pending

The world export job request is pending.

=item Running

The world export job is running.

=item Completed

The world export job completed.

=item Failed

The world export job failed. See C<failureCode> for more information.

=item Canceled

The world export job was cancelled.

=item Canceling

The world export job is being cancelled.

=back


Valid values are: C<"Pending">, C<"Running">, C<"Completed">, C<"Failed">, C<"Canceling">, C<"Canceled">
=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
world export job.


=head2 _request_id => Str


=cut

