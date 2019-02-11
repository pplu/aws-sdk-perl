
package Paws::ResourceGroups::SearchResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryErrors => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::QueryError]');
  has ResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ResourceIdentifier]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::SearchResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The NextToken value to include in a subsequent C<SearchResources>
request, to get more results.


=head2 QueryErrors => ArrayRef[L<Paws::ResourceGroups::QueryError>]

A list of C<QueryError> objects. Each error is an object that contains
C<ErrorCode> and C<Message> structures. Possible values for
C<ErrorCode> are C<CLOUDFORMATION_STACK_INACTIVE> and
C<CLOUDFORMATION_STACK_NOT_EXISTING>.


=head2 ResourceIdentifiers => ArrayRef[L<Paws::ResourceGroups::ResourceIdentifier>]

The ARNs and resource types of resources that are members of the group
that you specified.


=head2 _request_id => Str


=cut

