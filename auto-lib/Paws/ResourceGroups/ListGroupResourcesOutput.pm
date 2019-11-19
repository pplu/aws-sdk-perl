
package Paws::ResourceGroups::ListGroupResourcesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_ResourceIdentifier ResourceGroups_QueryError/;
  has NextToken => (is => 'ro', isa => Str);
  has QueryErrors => (is => 'ro', isa => ArrayRef[ResourceGroups_QueryError]);
  has ResourceIdentifiers => (is => 'ro', isa => ArrayRef[ResourceGroups_ResourceIdentifier]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'QueryErrors' => {
                                  'type' => 'ArrayRef[ResourceGroups_QueryError]',
                                  'class' => 'Paws::ResourceGroups::QueryError'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceIdentifiers' => {
                                          'class' => 'Paws::ResourceGroups::ResourceIdentifier',
                                          'type' => 'ArrayRef[ResourceGroups_ResourceIdentifier]'
                                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroupResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The NextToken value to include in a subsequent C<ListGroupResources>
request, to get more results.


=head2 QueryErrors => ArrayRef[ResourceGroups_QueryError]

A list of C<QueryError> objects. Each error is an object that contains
C<ErrorCode> and C<Message> structures. Possible values for
C<ErrorCode> are C<CLOUDFORMATION_STACK_INACTIVE> and
C<CLOUDFORMATION_STACK_NOT_EXISTING>.


=head2 ResourceIdentifiers => ArrayRef[ResourceGroups_ResourceIdentifier]

The ARNs and resource types of resources that are members of the group
that you specified.


=head2 _request_id => Str


=cut

