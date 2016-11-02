
package Paws::EFS::DescribeFileSystemsResponse;
  use Moose;
  has FileSystems => (is => 'ro', isa => 'ArrayRef[Paws::EFS::FileSystemDescription]');
  has Marker => (is => 'ro', isa => 'Str');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeFileSystemsResponse

=head1 ATTRIBUTES


=head2 FileSystems => ArrayRef[L<Paws::EFS::FileSystemDescription>]

Array of file system descriptions.


=head2 Marker => Str

Present if provided by caller in the request (String).


=head2 NextMarker => Str

Present if there are more file systems than returned in the response
(String). You can use the C<NextMarker> in the subsequent request to
fetch the descriptions.


=head2 _request_id => Str


=cut

