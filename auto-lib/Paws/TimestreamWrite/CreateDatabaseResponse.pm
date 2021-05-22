
package Paws::TimestreamWrite::CreateDatabaseResponse;
  use Moose;
  has Database => (is => 'ro', isa => 'Paws::TimestreamWrite::Database');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::CreateDatabaseResponse

=head1 ATTRIBUTES


=head2 Database => L<Paws::TimestreamWrite::Database>

The newly created Timestream database.


=head2 _request_id => Str


=cut

1;