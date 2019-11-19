
package Paws::DataExchange::ListJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataExchange::Types qw/DataExchange_JobEntry/;
  has Jobs => (is => 'ro', isa => ArrayRef[DataExchange_JobEntry]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Jobs' => {
                           'type' => 'ArrayRef[DataExchange_JobEntry]',
                           'class' => 'Paws::DataExchange::JobEntry'
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

Paws::DataExchange::ListJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[DataExchange_JobEntry]

The jobs listed by the request.


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 _request_id => Str


=cut

