
package Paws::DataExchange::ListDataSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataExchange::Types qw/DataExchange_DataSetEntry/;
  has DataSets => (is => 'ro', isa => ArrayRef[DataExchange_DataSetEntry]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataSets' => {
                               'class' => 'Paws::DataExchange::DataSetEntry',
                               'type' => 'ArrayRef[DataExchange_DataSetEntry]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::DataExchange::ListDataSetsResponse

=head1 ATTRIBUTES


=head2 DataSets => ArrayRef[DataExchange_DataSetEntry]

The data set objects listed by the request.


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 _request_id => Str


=cut

