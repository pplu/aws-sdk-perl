
package Paws::CognitoIdp::ConfirmDeviceResponse;
  use Moose;
  has UserConfirmationNecessary => (is => 'ro', isa => 'Bool');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmDeviceResponse

=head1 ATTRIBUTES


=head2 UserConfirmationNecessary => Bool

Indicates whether the user confirmation is necessary to confirm the
device response.




=cut

1;