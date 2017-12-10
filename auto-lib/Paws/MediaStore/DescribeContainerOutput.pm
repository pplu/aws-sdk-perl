
package Paws::MediaStore::DescribeContainerOutput;
  use Moose;
  has Container => (is => 'ro', isa => 'Paws::MediaStore::Container');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::DescribeContainerOutput

=head1 ATTRIBUTES


=head2 Container => L<Paws::MediaStore::Container>

The name of the queried container.


=head2 _request_id => Str


=cut

1;