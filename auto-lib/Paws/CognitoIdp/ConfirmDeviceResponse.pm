
package Paws::CognitoIdp::ConfirmDeviceResponse;
  use Moose;
  has UserConfirmationNecessary => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmDeviceResponse

=head1 ATTRIBUTES


=head2 UserConfirmationNecessary => Bool

Indicates whether the user confirmation is necessary to confirm the
device response.


=head2 _request_id => Str


=cut

1;