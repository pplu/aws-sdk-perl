
package Paws::SageMaker::DescribeDeviceFleetResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DeviceFleetArn => (is => 'ro', isa => 'Str', required => 1);
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has IotRoleAlias => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::EdgeOutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeDeviceFleetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

Timestamp of when the device fleet was created.


=head2 Description => Str

A description of the fleet.


=head2 B<REQUIRED> DeviceFleetArn => Str

The The Amazon Resource Name (ARN) of the fleet.


=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet.


=head2 IotRoleAlias => Str

The Amazon Resource Name (ARN) alias created in Amazon Web Services
Internet of Things (IoT).


=head2 B<REQUIRED> LastModifiedTime => Str

Timestamp of when the device fleet was last updated.


=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

The output configuration for storing sampled data.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) that has access to Amazon Web Services
Internet of Things (IoT).


=head2 _request_id => Str


=cut

1;