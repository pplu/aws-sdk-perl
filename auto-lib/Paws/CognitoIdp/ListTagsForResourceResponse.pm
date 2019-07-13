
package Paws::CognitoIdp::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolTagsType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CognitoIdp::UserPoolTagsType>

The tags that are assigned to the user pool.


=head2 _request_id => Str


=cut

1;