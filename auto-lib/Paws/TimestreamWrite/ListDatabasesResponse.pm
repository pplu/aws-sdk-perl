
package Paws::TimestreamWrite::ListDatabasesResponse;
  use Moose;
  has Databases => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamWrite::Database]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::ListDatabasesResponse

=head1 ATTRIBUTES


=head2 Databases => ArrayRef[L<Paws::TimestreamWrite::Database>]

A list of database names.


=head2 NextToken => Str

The pagination token. This parameter is returned when the response is
truncated.


=head2 _request_id => Str


=cut

1;