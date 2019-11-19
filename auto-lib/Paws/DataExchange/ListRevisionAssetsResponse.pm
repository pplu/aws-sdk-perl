
package Paws::DataExchange::ListRevisionAssetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataExchange::Types qw/DataExchange_AssetEntry/;
  has Assets => (is => 'ro', isa => ArrayRef[DataExchange_AssetEntry]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Assets' => {
                             'class' => 'Paws::DataExchange::AssetEntry',
                             'type' => 'ArrayRef[DataExchange_AssetEntry]'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListRevisionAssetsResponse

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[DataExchange_AssetEntry]

The asset objects listed by the request.


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 _request_id => Str


=cut

