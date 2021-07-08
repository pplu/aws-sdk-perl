
package Paws::Athena::GetPreparedStatementOutput;
  use Moose;
  has PreparedStatement => (is => 'ro', isa => 'Paws::Athena::PreparedStatement');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetPreparedStatementOutput

=head1 ATTRIBUTES


=head2 PreparedStatement => L<Paws::Athena::PreparedStatement>

The name of the prepared statement that was retrieved.


=head2 _request_id => Str


=cut

1;