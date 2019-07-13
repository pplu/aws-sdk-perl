
package Paws::ResourceGroups::ListGroupsOutput;
  use Moose;
  has GroupIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::GroupIdentifier]');
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::Group]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroupsOutput

=head1 ATTRIBUTES


=head2 GroupIdentifiers => ArrayRef[L<Paws::ResourceGroups::GroupIdentifier>]

A list of GroupIdentifier objects. Each identifier is an object that
contains both the GroupName and the GroupArn.


=head2 Groups => ArrayRef[L<Paws::ResourceGroups::Group>]

A list of resource groups.


=head2 NextToken => Str

The NextToken value to include in a subsequent C<ListGroups> request,
to get more results.


=head2 _request_id => Str


=cut

