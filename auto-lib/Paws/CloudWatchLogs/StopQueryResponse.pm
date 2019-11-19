# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::StopQueryResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CloudWatchLogs::Types qw//;
  has Success => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Success' => {
                              'type' => 'Bool'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Success' => 'success'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StopQueryResponse

=head1 ATTRIBUTES


=head2 Success => Bool

This is true if the query was stopped by the C<StopQuery> operation.


=head2 _request_id => Str


=cut

1;