
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

Metadata entries for the folders and objects at the requested path.


=head2 NextToken => Str

The C<NextToken> used to request the next page of results using
C<ListItems>.


=head2 _request_id => Str


=cut

