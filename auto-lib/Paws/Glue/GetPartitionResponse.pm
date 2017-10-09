
package Paws::Glue::GetPartitionResponse;
  use Moose;
  has Partition => (is => 'ro', isa => 'Paws::Glue::Partition');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPartitionResponse

=head1 ATTRIBUTES


=head2 Partition => L<Paws::Glue::Partition>

The requested information, in the form of a C<Partition> object.


=head2 _request_id => Str


=cut

1;