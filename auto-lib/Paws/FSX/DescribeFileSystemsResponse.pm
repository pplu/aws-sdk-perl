
package Paws::FSX::DescribeFileSystemsResponse;
  use Moose;
  has FileSystems => (is => 'ro', isa => 'ArrayRef[Paws::FSX::FileSystem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeFileSystemsResponse

=head1 ATTRIBUTES


=head2 FileSystems => ArrayRef[L<Paws::FSX::FileSystem>]

An array of file system descriptions.


=head2 NextToken => Str

Present if there are more file systems than returned in the response
(String). You can use the C<NextToken> value in the later request to
fetch the descriptions.


=head2 _request_id => Str


=cut

1;