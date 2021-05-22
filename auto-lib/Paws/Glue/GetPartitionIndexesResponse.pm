
package Paws::Glue::GetPartitionIndexesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PartitionIndexDescriptorList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::PartitionIndexDescriptor]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPartitionIndexesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, present if the current list segment is not the
last.


=head2 PartitionIndexDescriptorList => ArrayRef[L<Paws::Glue::PartitionIndexDescriptor>]

A list of index descriptors.


=head2 _request_id => Str


=cut

1;