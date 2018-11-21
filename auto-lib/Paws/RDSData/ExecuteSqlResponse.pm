
package Paws::RDSData::ExecuteSqlResponse;
  use Moose;
  has SqlStatementResults => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::SqlStatementResult]', traits => ['NameInRequest'], request_name => 'sqlStatementResults', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ExecuteSqlResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SqlStatementResults => ArrayRef[L<Paws::RDSData::SqlStatementResult>]

Results returned by executing the sql statement(s)


=head2 _request_id => Str


=cut

