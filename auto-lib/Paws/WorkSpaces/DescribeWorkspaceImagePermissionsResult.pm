
package Paws::WorkSpaces::DescribeWorkspaceImagePermissionsResult;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Str');
  has ImagePermissions => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::ImagePermission]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceImagePermissionsResult

=head1 ATTRIBUTES


=head2 ImageId => Str

The identifier of the image.


=head2 ImagePermissions => ArrayRef[L<Paws::WorkSpaces::ImagePermission>]

The identifiers of the AWS accounts that the image has been shared
with.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;