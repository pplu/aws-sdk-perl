
package Paws::CognitoIdentity::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CognitoIdentity::IdentityPoolTagsType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CognitoIdentity::IdentityPoolTagsType>

The tags that are assigned to the identity pool.


=head2 _request_id => Str


=cut

1;