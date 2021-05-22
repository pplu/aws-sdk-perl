
package Paws::TimestreamWrite::UpdateDatabaseResponse;
  use Moose;
  has Database => (is => 'ro', isa => 'Paws::TimestreamWrite::Database');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::UpdateDatabaseResponse

=head1 ATTRIBUTES


=head2 Database => L<Paws::TimestreamWrite::Database>




=head2 _request_id => Str


=cut

1;