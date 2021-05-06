
package Paws::CognitoIdp::SignUpResponse;
  use Moose;
  has CodeDeliveryDetails => (is => 'ro', isa => 'Paws::CognitoIdp::CodeDeliveryDetailsType');
  has UserConfirmed => (is => 'ro', isa => 'Bool', required => 1);
  has UserSub => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SignUpResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => L<Paws::CognitoIdp::CodeDeliveryDetailsType>

The code delivery details returned by the server response to the user
registration request.


=head2 B<REQUIRED> UserConfirmed => Bool

A response from the server indicating that a user registration has been
confirmed.


=head2 B<REQUIRED> UserSub => Str

The UUID of the authenticated user. This is not the same as
C<username>.


=head2 _request_id => Str


=cut

1;