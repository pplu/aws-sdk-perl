
package Paws::MediaPackage::CreateHarvestJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelId');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has OriginEndpointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originEndpointId');
  has S3Destination => (is => 'ro', isa => 'Paws::MediaPackage::S3Destination', traits => ['NameInRequest'], request_name => 's3Destination');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::CreateHarvestJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) assigned to the HarvestJob.


=head2 ChannelId => Str

The ID of the Channel that the HarvestJob will harvest from.


=head2 CreatedAt => Str

The time the HarvestJob was submitted


=head2 EndTime => Str

The end of the time-window which will be harvested.


=head2 Id => Str

The ID of the HarvestJob. The ID must be unique within the region and
it cannot be changed after the HarvestJob is submitted.


=head2 OriginEndpointId => Str

The ID of the OriginEndpoint that the HarvestJob will harvest from.
This cannot be changed after the HarvestJob is submitted.


=head2 S3Destination => L<Paws::MediaPackage::S3Destination>




=head2 StartTime => Str

The start of the time-window which will be harvested.


=head2 Status => Str

The current status of the HarvestJob. Consider setting up a CloudWatch
Event to listen for HarvestJobs as they succeed or fail. In the event
of failure, the CloudWatch Event will include an explanation of why the
HarvestJob failed.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

