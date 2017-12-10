
package Paws::ResourceGroups::ListGroupResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ResourceIdentifier]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroupResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The NextToken value to include in a subsequent C<ListGroupResources>
request, to get more results.


=head2 ResourceIdentifiers => ArrayRef[L<Paws::ResourceGroups::ResourceIdentifier>]

The ARNs and resource types of resources that are members of the group
that you specified.


=head2 _request_id => Str


=cut

