
package Paws::DataExchange::ListDataSetRevisionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataExchange::Types qw/DataExchange_RevisionEntry/;
  has NextToken => (is => 'ro', isa => Str);
  has Revisions => (is => 'ro', isa => ArrayRef[DataExchange_RevisionEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Revisions' => {
                                'class' => 'Paws::DataExchange::RevisionEntry',
                                'type' => 'ArrayRef[DataExchange_RevisionEntry]'
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

Paws::DataExchange::ListDataSetRevisionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 Revisions => ArrayRef[DataExchange_RevisionEntry]

The asset objects listed by the request.


=head2 _request_id => Str


=cut

