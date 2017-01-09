
package Paws::CognitoIdp::ForgotPasswordResponse;
  use Moose;
  has CodeDeliveryDetails => (is => 'ro', isa => 'Paws::CognitoIdp::CodeDeliveryDetailsType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ForgotPasswordResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => L<Paws::CognitoIdp::CodeDeliveryDetailsType>

The code delivery details returned by the server in response to the
request to reset a password.


=head2 _request_id => Str


=cut

1;