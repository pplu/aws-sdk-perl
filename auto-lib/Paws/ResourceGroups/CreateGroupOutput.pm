
package Paws::ResourceGroups::CreateGroupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_ResourceQuery ResourceGroups_Group ResourceGroups_Tags/;
  has Group => (is => 'ro', isa => ResourceGroups_Group);
  has ResourceQuery => (is => 'ro', isa => ResourceGroups_ResourceQuery);
  has Tags => (is => 'ro', isa => ResourceGroups_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceQuery' => {
                                    'class' => 'Paws::ResourceGroups::ResourceQuery',
                                    'type' => 'ResourceGroups_ResourceQuery'
                                  },
               'Tags' => {
                           'type' => 'ResourceGroups_Tags',
                           'class' => 'Paws::ResourceGroups::Tags'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Group' => {
                            'type' => 'ResourceGroups_Group',
                            'class' => 'Paws::ResourceGroups::Group'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::CreateGroupOutput

=head1 ATTRIBUTES


=head2 Group => ResourceGroups_Group

A full description of the resource group after it is created.


=head2 ResourceQuery => ResourceGroups_ResourceQuery

The resource query associated with the group.


=head2 Tags => ResourceGroups_Tags

The tags associated with the group.


=head2 _request_id => Str


=cut

