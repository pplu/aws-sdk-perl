
package Paws::Athena::StartQueryExecutionOutput;
  use Moose;
  has QueryExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::StartQueryExecutionOutput

=head1 ATTRIBUTES


=head2 QueryExecutionId => Str

The unique ID of the query that ran as a result of this request.


=head2 _request_id => Str


=cut

1;