
package Paws::Glue::BatchDeleteTableResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::TableError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeleteTableResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Glue::TableError>]

A list of errors encountered in attempting to delete the specified
tables.


=head2 _request_id => Str


=cut

1;