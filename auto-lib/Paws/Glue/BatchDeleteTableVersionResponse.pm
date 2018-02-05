
package Paws::Glue::BatchDeleteTableVersionResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::TableVersionError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeleteTableVersionResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Glue::TableVersionError>]

A list of errors encountered while trying to delete the specified table
versions.


=head2 _request_id => Str


=cut

1;