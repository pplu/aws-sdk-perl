
package Paws::Glue::BatchCreatePartitionResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::PartitionError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchCreatePartitionResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Glue::PartitionError>]

Errors encountered when trying to create the requested partitions.


=head2 _request_id => Str


=cut

1;