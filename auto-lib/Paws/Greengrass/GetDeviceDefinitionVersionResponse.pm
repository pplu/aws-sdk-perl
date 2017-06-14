
package Paws::Greengrass::GetDeviceDefinitionVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Paws::Greengrass::DeviceDefinitionVersion');
  has Id => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetDeviceDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Arn of the device definition version.


=head2 CreationTimestamp => Str

Timestamp of when the device definition version was created.


=head2 Definition => L<Paws::Greengrass::DeviceDefinitionVersion>

Device definition version


=head2 Id => Str

Id of the device definition the version belongs to.


=head2 Version => Str

Version of the device definition version.


=head2 _request_id => Str


=cut

