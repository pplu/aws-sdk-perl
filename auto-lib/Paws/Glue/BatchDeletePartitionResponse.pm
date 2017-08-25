
package Paws::Glue::BatchDeletePartitionResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::PartitionError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeletePartitionResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Glue::PartitionError>]

Errors encountered when trying to delete the requested partitions.


=head2 _request_id => Str


=cut

1;