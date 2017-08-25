
package Paws::Glue::GetPartitionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Partitions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Partition]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPartitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the returned list of partitions does not does
not include the last one.


=head2 Partitions => ArrayRef[L<Paws::Glue::Partition>]

A list of requested partitions.


=head2 _request_id => Str


=cut

1;