# Generated from json/callresult_class.tt

package Paws::Athena::StartQueryExecutionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw//;
  has QueryExecutionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueryExecutionId' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::Athena::StartQueryExecutionOutput

=head1 ATTRIBUTES


=head2 QueryExecutionId => Str

The unique ID of the query that ran as a result of this request.


=head2 _request_id => Str


=cut

1;