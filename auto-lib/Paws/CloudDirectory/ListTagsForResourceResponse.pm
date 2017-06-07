
package Paws::CloudDirectory::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 Tags => ArrayRef[L<Paws::CloudDirectory::Tag>]

A list of tag key value pairs that are associated with the response.


=head2 _request_id => Str


=cut

