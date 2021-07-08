
package Paws::TimestreamWrite::UpdateTableResponse;
  use Moose;
  has Table => (is => 'ro', isa => 'Paws::TimestreamWrite::Table');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::UpdateTableResponse

=head1 ATTRIBUTES


=head2 Table => L<Paws::TimestreamWrite::Table>

The updated Timestream table.


=head2 _request_id => Str


=cut

1;