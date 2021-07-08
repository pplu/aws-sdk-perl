
package Paws::WorkSpaces::DescribeConnectionAliasPermissionsResult;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has ConnectionAliasPermissions => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::ConnectionAliasPermission]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeConnectionAliasPermissionsResult

=head1 ATTRIBUTES


=head2 AliasId => Str

The identifier of the connection alias.


=head2 ConnectionAliasPermissions => ArrayRef[L<Paws::WorkSpaces::ConnectionAliasPermission>]

The permissions associated with a connection alias.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;