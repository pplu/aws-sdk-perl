
package Paws::TimestreamWrite::ListTablesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tables => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamWrite::Table]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::ListTablesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.


=head2 Tables => ArrayRef[L<Paws::TimestreamWrite::Table>]

A list of tables.


=head2 _request_id => Str


=cut

1;