# Generated from json/callresult_class.tt

package Paws::Athena::GetQueryExecutionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw/Athena_QueryExecution/;
  has QueryExecution => (is => 'ro', isa => Athena_QueryExecution);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueryExecution' => {
                                     'class' => 'Paws::Athena::QueryExecution',
                                     'type' => 'Athena_QueryExecution'
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

Paws::Athena::GetQueryExecutionOutput

=head1 ATTRIBUTES


=head2 QueryExecution => Athena_QueryExecution

Information about the query execution.


=head2 _request_id => Str


=cut

1;