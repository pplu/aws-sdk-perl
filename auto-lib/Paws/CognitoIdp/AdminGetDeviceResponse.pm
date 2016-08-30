
package Paws::CognitoIdp::AdminGetDeviceResponse;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::CognitoIdp::DeviceType', required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminGetDeviceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Device => L<Paws::CognitoIdp::DeviceType>

The device.




=cut

1;