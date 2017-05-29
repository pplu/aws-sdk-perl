
package Paws::Athena::GetQueryExecutionOutput;
  use Moose;
  has QueryExecution => (is => 'ro', isa => 'Paws::Athena::QueryExecution');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetQueryExecutionOutput

=head1 ATTRIBUTES


=head2 QueryExecution => L<Paws::Athena::QueryExecution>

Information about the query execution.


=head2 _request_id => Str


=cut

1;