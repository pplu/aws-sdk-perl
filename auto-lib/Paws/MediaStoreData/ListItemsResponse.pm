
package Paws::MediaStoreData::ListItemsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaStoreData::Types qw/MediaStoreData_Item/;
  has Items => (is => 'ro', isa => ArrayRef[MediaStoreData_Item]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Items' => {
                            'class' => 'Paws::MediaStoreData::Item',
                            'type' => 'ArrayRef[MediaStoreData_Item]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::ListItemsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[MediaStoreData_Item]

The metadata entries for the folders and objects at the requested path.


=head2 NextToken => Str

The token that can be used in a request to view the next set of
results. For example, you submit a C<ListItems> request that matches
2,000 items with C<MaxResults> set at 500. The service returns the
first batch of results (up to 500) and a C<NextToken> value that can be
used to fetch the next batch of results.


=head2 _request_id => Str


=cut

