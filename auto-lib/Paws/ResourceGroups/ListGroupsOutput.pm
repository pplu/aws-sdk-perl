
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
contains both the C<Name> and the C<GroupArn>.


=head2 Groups => ArrayRef[L<Paws::ResourceGroups::Group>]

I<B<Deprecated - don't use this field. Use the C<GroupIdentifiers>
response field instead.>>


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>.


=head2 _request_id => Str


=cut

