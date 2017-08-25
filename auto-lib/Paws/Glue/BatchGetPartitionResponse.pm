
package Paws::Glue::BatchGetPartitionResponse;
  use Moose;
  has Partitions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Partition]');
  has UnprocessedKeys => (is => 'ro', isa => 'ArrayRef[Paws::Glue::PartitionValueList]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetPartitionResponse

=head1 ATTRIBUTES


=head2 Partitions => ArrayRef[L<Paws::Glue::Partition>]

A list of the requested partitions.


=head2 UnprocessedKeys => ArrayRef[L<Paws::Glue::PartitionValueList>]

A list of the partition values in the request for which partions were
not returned.


=head2 _request_id => Str


=cut

1;