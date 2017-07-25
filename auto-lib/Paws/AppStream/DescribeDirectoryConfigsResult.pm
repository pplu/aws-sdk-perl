
package Paws::AppStream::DescribeDirectoryConfigsResult;
  use Moose;
  has DirectoryConfigs => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::DirectoryConfig]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeDirectoryConfigsResult

=head1 ATTRIBUTES


=head2 DirectoryConfigs => ArrayRef[L<Paws::AppStream::DirectoryConfig>]

The list of directory configurations.


=head2 NextToken => Str

If not null, more results are available. To retrieve the next set of
items, pass this value for the NextToken parameter in a subsequent call
to DescribeDirectoryConfigs.


=head2 _request_id => Str


=cut

1;