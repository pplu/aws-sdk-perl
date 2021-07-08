
package Paws::GuardDuty::DescribePublishingDestinationResponse;
  use Moose;
  has DestinationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationId', required => 1);
  has DestinationProperties => (is => 'ro', isa => 'Paws::GuardDuty::DestinationProperties', traits => ['NameInRequest'], request_name => 'destinationProperties', required => 1);
  has DestinationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationType', required => 1);
  has PublishingFailureStartTimestamp => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'publishingFailureStartTimestamp', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DescribePublishingDestinationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

The ID of the publishing destination.


=head2 B<REQUIRED> DestinationProperties => L<Paws::GuardDuty::DestinationProperties>

A C<DestinationProperties> object that includes the C<DestinationArn>
and C<KmsKeyArn> of the publishing destination.


=head2 B<REQUIRED> DestinationType => Str

The type of publishing destination. Currently, only Amazon S3 buckets
are supported.

Valid values are: C<"S3">
=head2 B<REQUIRED> PublishingFailureStartTimestamp => Int

The time, in epoch millisecond format, at which GuardDuty was first
unable to publish findings to the destination.


=head2 B<REQUIRED> Status => Str

The status of the publishing destination.

Valid values are: C<"PENDING_VERIFICATION">, C<"PUBLISHING">, C<"UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY">, C<"STOPPED">
=head2 _request_id => Str


=cut

