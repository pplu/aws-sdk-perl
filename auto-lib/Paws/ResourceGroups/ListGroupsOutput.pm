
package Paws::ResourceGroups::ListGroupsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_Group ResourceGroups_GroupIdentifier/;
  has GroupIdentifiers => (is => 'ro', isa => ArrayRef[ResourceGroups_GroupIdentifier]);
  has Groups => (is => 'ro', isa => ArrayRef[ResourceGroups_Group]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::ResourceGroups::Group',
                             'type' => 'ArrayRef[ResourceGroups_Group]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GroupIdentifiers' => {
                                       'class' => 'Paws::ResourceGroups::GroupIdentifier',
                                       'type' => 'ArrayRef[ResourceGroups_GroupIdentifier]'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroupsOutput

=head1 ATTRIBUTES


=head2 GroupIdentifiers => ArrayRef[ResourceGroups_GroupIdentifier]

A list of GroupIdentifier objects. Each identifier is an object that
contains both the GroupName and the GroupArn.


=head2 Groups => ArrayRef[ResourceGroups_Group]

A list of resource groups.


=head2 NextToken => Str

The NextToken value to include in a subsequent C<ListGroups> request,
to get more results.


=head2 _request_id => Str


=cut

