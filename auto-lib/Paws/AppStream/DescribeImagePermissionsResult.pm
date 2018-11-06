
package Paws::AppStream::DescribeImagePermissionsResult;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SharedImagePermissionsList => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::SharedImagePermissions]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImagePermissionsResult

=head1 ATTRIBUTES


=head2 Name => Str

The name of the private image.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 SharedImagePermissionsList => ArrayRef[L<Paws::AppStream::SharedImagePermissions>]

The permissions for a private image that you own.


=head2 _request_id => Str


=cut

1;