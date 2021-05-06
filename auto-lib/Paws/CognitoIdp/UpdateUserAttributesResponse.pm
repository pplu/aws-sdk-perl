
package Paws::CognitoIdp::UpdateUserAttributesResponse;
  use Moose;
  has CodeDeliveryDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::CodeDeliveryDetailsType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserAttributesResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetailsList => ArrayRef[L<Paws::CognitoIdp::CodeDeliveryDetailsType>]

The code delivery details list from the server for the request to
update user attributes.


=head2 _request_id => Str


=cut

1;