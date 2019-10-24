# Generated from json/callresult_class.tt

package Paws::Athena::BatchGetQueryExecutionOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Athena::Types qw/Athena_UnprocessedQueryExecutionId Athena_QueryExecution/;
  has QueryExecutions => (is => 'ro', isa => ArrayRef[Athena_QueryExecution]);
  has UnprocessedQueryExecutionIds => (is => 'ro', isa => ArrayRef[Athena_UnprocessedQueryExecutionId]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'QueryExecutions' => {
                                      'class' => 'Paws::Athena::QueryExecution',
                                      'type' => 'ArrayRef[Athena_QueryExecution]'
                                    },
               'UnprocessedQueryExecutionIds' => {
                                                   'class' => 'Paws::Athena::UnprocessedQueryExecutionId',
                                                   'type' => 'ArrayRef[Athena_UnprocessedQueryExecutionId]'
                                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Athena::BatchGetQueryExecutionOutput

=head1 ATTRIBUTES


=head2 QueryExecutions => ArrayRef[Athena_QueryExecution]

Information about a query execution.


=head2 UnprocessedQueryExecutionIds => ArrayRef[Athena_UnprocessedQueryExecutionId]

Information about the query executions that failed to run.


=head2 _request_id => Str


=cut

1;