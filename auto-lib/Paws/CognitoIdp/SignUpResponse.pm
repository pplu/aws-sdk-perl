
package Paws::CognitoIdp::SignUpResponse;
  use Moose;
  has CodeDeliveryDetails => (is => 'ro', isa => 'Paws::CognitoIdp::CodeDeliveryDetailsType');
  has UserConfirmed => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SignUpResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => L<Paws::CognitoIdp::CodeDeliveryDetailsType>

The code delivery details returned by the server response to the user
registration request.


=head2 UserConfirmed => Bool

A response from the server indicating that a user registration has been
confirmed.


=head2 _request_id => Str


=cut

1;