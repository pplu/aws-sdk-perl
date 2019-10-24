
package Paws::ResourceGroups::CreateGroupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_Tags ResourceGroups_Group ResourceGroups_ResourceQuery/;
  has Group => (is => 'ro', isa => ResourceGroups_Group);
  has ResourceQuery => (is => 'ro', isa => ResourceGroups_ResourceQuery);
  has Tags => (is => 'ro', isa => ResourceGroups_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ResourceGroups::Tags',
                           'type' => 'ResourceGroups_Tags'
                         },
               'ResourceQuery' => {
                                    'class' => 'Paws::ResourceGroups::ResourceQuery',
                                    'type' => 'ResourceGroups_ResourceQuery'
                                  },
               'Group' => {
                            'class' => 'Paws::ResourceGroups::Group',
                            'type' => 'ResourceGroups_Group'
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

