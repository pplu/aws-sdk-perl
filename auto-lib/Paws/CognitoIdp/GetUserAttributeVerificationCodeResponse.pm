
package Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse;
  use Moose;
  has CodeDeliveryDetails => (is => 'ro', isa => 'Paws::CognitoIdp::CodeDeliveryDetailsType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => L<Paws::CognitoIdp::CodeDeliveryDetailsType>

The code delivery details returned by the server in response to the
request to get the user attribute verification code.


=head2 _request_id => Str


=cut

1;