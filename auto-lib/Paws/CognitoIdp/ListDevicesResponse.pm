
package Paws::CognitoIdp::ListDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::DeviceType]');
  has PaginationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::CognitoIdp::DeviceType>]

The devices returned in the list devices response.


=head2 PaginationToken => Str

The pagination token for the list device response.


=head2 _request_id => Str


=cut

1;