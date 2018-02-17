
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

Information about the directory configurations. Note that although the
response syntax in this topic includes the account password, this
password is not returned in the actual response.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;