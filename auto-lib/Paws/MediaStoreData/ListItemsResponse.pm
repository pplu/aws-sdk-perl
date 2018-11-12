
package Paws::MediaStoreData::ListItemsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaStoreData::Item]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::ListItemsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaStoreData::Item>]

The metadata entries for the folders and objects at the requested path.


=head2 NextToken => Str

The token that can be used in a request to view the next set of
results. For example, you submit a C<ListItems> request that matches
2,000 items with C<MaxResults> set at 500. The service returns the
first batch of results (up to 500) and a C<NextToken> value that can be
used to fetch the next batch of results.


=head2 _request_id => Str


=cut

