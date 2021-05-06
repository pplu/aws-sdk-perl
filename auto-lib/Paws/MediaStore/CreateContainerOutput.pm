
package Paws::MediaStore::CreateContainerOutput;
  use Moose;
  has Container => (is => 'ro', isa => 'Paws::MediaStore::Container', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::CreateContainerOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Container => L<Paws::MediaStore::Container>

ContainerARN: The Amazon Resource Name (ARN) of the newly created
container. The ARN has the following format:
arn:aws:E<lt>regionE<gt>:E<lt>account that owns this
containerE<gt>:container/E<lt>name of containerE<gt>. For example:
arn:aws:mediastore:us-west-2:111122223333:container/movies

ContainerName: The container name as specified in the request.

CreationTime: Unix time stamp.

Status: The status of container creation or deletion. The status is one
of the following: C<CREATING>, C<ACTIVE>, or C<DELETING>. While the
service is creating the container, the status is C<CREATING>. When an
endpoint is available, the status changes to C<ACTIVE>.

The return value does not include the container's endpoint. To make
downstream requests, you must obtain this value by using
DescribeContainer or ListContainers.


=head2 _request_id => Str


=cut

1;