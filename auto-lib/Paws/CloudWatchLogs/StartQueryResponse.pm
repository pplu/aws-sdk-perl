# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::StartQueryResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchLogs::Types qw//;
  has QueryId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'QueryId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'QueryId' => 'queryId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StartQueryResponse

=head1 ATTRIBUTES


=head2 QueryId => Str

The unique ID of the query.


=head2 _request_id => Str


=cut

1;