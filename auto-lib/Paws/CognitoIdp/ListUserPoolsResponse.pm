
package Paws::CognitoIdp::ListUserPoolsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UserPools => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::UserPoolDescriptionType]');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserPoolsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 UserPools => ArrayRef[L<Paws::CognitoIdp::UserPoolDescriptionType>]

The user pools from the response to list users.




=cut

1;