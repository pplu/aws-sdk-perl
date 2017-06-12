
package Paws::OpsWorks::ListTagsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::OpsWorks::Tags');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ListTagsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If a paginated request does not return all of the remaining results,
this parameter is set to a token that you can assign to the request
object's C<NextToken> parameter to get the next set of results. If the
previous paginated request returned all of the remaining results, this
parameter is set to C<null>.


=head2 Tags => L<Paws::OpsWorks::Tags>

A set of key-value pairs that contain tag keys and tag values that are
attached to a stack or layer.


=head2 _request_id => Str


=cut

1;