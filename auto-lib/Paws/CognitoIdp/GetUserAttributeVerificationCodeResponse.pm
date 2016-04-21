
package Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse;
  use Moose;
  has CodeDeliveryDetails => (is => 'ro', isa => 'Paws::CognitoIdp::CodeDeliveryDetailsType');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => L<Paws::CognitoIdp::CodeDeliveryDetailsType>

The code delivery details returned by the server response to get the
user attribute verification code.




=cut

1;