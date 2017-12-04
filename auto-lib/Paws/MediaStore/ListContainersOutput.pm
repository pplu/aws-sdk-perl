
package Paws::MediaStore::ListContainersOutput;
  use Moose;
  has Containers => (is => 'ro', isa => 'ArrayRef[Paws::MediaStore::Container]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::ListContainersOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Containers => ArrayRef[L<Paws::MediaStore::Container>]

The names of the containers.


=head2 NextToken => Str

C<NextToken> is the token to use in the next call to C<ListContainers>.
This token is returned only if you included the C<MaxResults> tag in
the original command, and only if there are still containers to return.


=head2 _request_id => Str


=cut

1;