
package Paws::TimestreamWrite::CreateTableResponse;
  use Moose;
  has Table => (is => 'ro', isa => 'Paws::TimestreamWrite::Table');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::CreateTableResponse

=head1 ATTRIBUTES


=head2 Table => L<Paws::TimestreamWrite::Table>

The newly created Timestream table.


=head2 _request_id => Str


=cut

1;