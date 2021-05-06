
package Paws::CognitoIdp::AdminListDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::DeviceType]');
  has PaginationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::CognitoIdp::DeviceType>]

The devices in the list of devices response.


=head2 PaginationToken => Str

The pagination token.


=head2 _request_id => Str


=cut

1;