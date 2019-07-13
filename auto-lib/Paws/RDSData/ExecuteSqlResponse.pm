
package Paws::RDSData::ExecuteSqlResponse;
  use Moose;
  has SqlStatementResults => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::SqlStatementResult]', traits => ['NameInRequest'], request_name => 'sqlStatementResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ExecuteSqlResponse

=head1 ATTRIBUTES


=head2 SqlStatementResults => ArrayRef[L<Paws::RDSData::SqlStatementResult>]

The results of the SQL statement or statements.


=head2 _request_id => Str


=cut

