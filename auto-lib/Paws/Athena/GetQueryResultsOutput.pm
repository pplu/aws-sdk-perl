
package Paws::Athena::GetQueryResultsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResultSet => (is => 'ro', isa => 'Paws::Athena::ResultSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetQueryResultsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 ResultSet => L<Paws::Athena::ResultSet>

The results of the query execution.


=head2 _request_id => Str


=cut

1;