
package Paws::CognitoIdp::UpdateUserAttributesResponse;
  use Moose;
  has CodeDeliveryDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::CodeDeliveryDetailsType]');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserAttributesResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetailsList => ArrayRef[L<Paws::CognitoIdp::CodeDeliveryDetailsType>]

The code delivery details list from the server for the request to
update user attributes.




=cut

1;