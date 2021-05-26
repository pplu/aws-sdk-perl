
package Paws::EFS::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EFS::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

C<NextToken> is present if the response payload is paginated. You can
use C<NextToken> in a subsequent request to fetch the next page of
access point descriptions.


=head2 Tags => ArrayRef[L<Paws::EFS::Tag>]

An array of the tags for the specified EFS resource.


=head2 _request_id => Str


=cut

