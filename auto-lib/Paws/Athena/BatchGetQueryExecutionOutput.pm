
package Paws::Athena::BatchGetQueryExecutionOutput;
  use Moose;
  has QueryExecutions => (is => 'ro', isa => 'ArrayRef[Paws::Athena::QueryExecution]');
  has UnprocessedQueryExecutionIds => (is => 'ro', isa => 'ArrayRef[Paws::Athena::UnprocessedQueryExecutionId]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::BatchGetQueryExecutionOutput

=head1 ATTRIBUTES


=head2 QueryExecutions => ArrayRef[L<Paws::Athena::QueryExecution>]

Information about a query execution.


=head2 UnprocessedQueryExecutionIds => ArrayRef[L<Paws::Athena::UnprocessedQueryExecutionId>]

Information about the query executions that failed to run.


=head2 _request_id => Str


=cut

1;