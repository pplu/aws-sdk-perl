
package Paws::CognitoIdp::AdminListDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::DeviceType]');
  has PaginationToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::CognitoIdp::DeviceType>]

The devices in the list of devices response.



=head2 PaginationToken => Str

The pagination token.




=cut

1;