
package Paws::SageMaker::DescribeDeviceResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DeviceArn => (is => 'ro', isa => 'Str');
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);
  has IotThingName => (is => 'ro', isa => 'Str');
  has LatestHeartbeat => (is => 'ro', isa => 'Str');
  has MaxModels => (is => 'ro', isa => 'Int');
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EdgeModel]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeDeviceResponse

=head1 ATTRIBUTES


=head2 Description => Str

A description of the device.


=head2 DeviceArn => Str

The Amazon Resource Name (ARN) of the device.


=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet the device belongs to.


=head2 B<REQUIRED> DeviceName => Str

The unique identifier of the device.


=head2 IotThingName => Str

The AWS Internet of Things (IoT) object thing name associated with the
device.


=head2 LatestHeartbeat => Str

The last heartbeat received from the device.


=head2 MaxModels => Int

The maximum number of models.


=head2 Models => ArrayRef[L<Paws::SageMaker::EdgeModel>]

Models on the device.


=head2 NextToken => Str

The response from the last list when returning a list large enough to
need tokening.


=head2 B<REQUIRED> RegistrationTime => Str

The timestamp of the last registration or de-reregistration.


=head2 _request_id => Str


=cut

1;