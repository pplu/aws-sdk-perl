
package Paws::GreengrassV2::ListCoreDevicesResponse;
  use Moose;
  has CoreDevices => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::CoreDevice]', traits => ['NameInRequest'], request_name => 'coreDevices');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListCoreDevicesResponse

=head1 ATTRIBUTES


=head2 CoreDevices => ArrayRef[L<Paws::GreengrassV2::CoreDevice>]

A list that summarizes each core device.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

