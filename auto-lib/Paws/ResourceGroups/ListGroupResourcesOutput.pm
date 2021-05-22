
package Paws::ResourceGroups::ListGroupResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryErrors => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::QueryError]');
  has ResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ResourceIdentifier]');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ListGroupResourcesItem]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroupResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>.


=head2 QueryErrors => ArrayRef[L<Paws::ResourceGroups::QueryError>]

A list of C<QueryError> objects. Each error is an object that contains
C<ErrorCode> and C<Message> structures. Possible values for
C<ErrorCode> are C<CLOUDFORMATION_STACK_INACTIVE> and
C<CLOUDFORMATION_STACK_NOT_EXISTING>.


=head2 ResourceIdentifiers => ArrayRef[L<Paws::ResourceGroups::ResourceIdentifier>]

B<I<Deprecated - don't use this parameter. Use the C<Resources>
response field instead.>>


=head2 Resources => ArrayRef[L<Paws::ResourceGroups::ListGroupResourcesItem>]

An array of resources from which you can determine each resource's
identity, type, and group membership status.


=head2 _request_id => Str


=cut

