
package Paws::GreengrassV2::ListClientDevicesAssociatedWithCoreDeviceResponse;
  use Moose;
  has AssociatedClientDevices => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::AssociatedClientDevice]', traits => ['NameInRequest'], request_name => 'associatedClientDevices');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListClientDevicesAssociatedWithCoreDeviceResponse

=head1 ATTRIBUTES


=head2 AssociatedClientDevices => ArrayRef[L<Paws::GreengrassV2::AssociatedClientDevice>]

A list that describes the client devices that are associated with the
core device.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

