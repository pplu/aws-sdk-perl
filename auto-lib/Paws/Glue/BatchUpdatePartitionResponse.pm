
package Paws::Glue::BatchUpdatePartitionResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::BatchUpdatePartitionFailureEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchUpdatePartitionResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Glue::BatchUpdatePartitionFailureEntry>]

The errors encountered when trying to update the requested partitions.
A list of C<BatchUpdatePartitionFailureEntry> objects.


=head2 _request_id => Str


=cut

1;