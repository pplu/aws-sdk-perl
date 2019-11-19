
package Paws::ResourceGroups::UpdateGroupQueryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_GroupQuery/;
  has GroupQuery => (is => 'ro', isa => ResourceGroups_GroupQuery);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupQuery' => {
                                 'type' => 'ResourceGroups_GroupQuery',
                                 'class' => 'Paws::ResourceGroups::GroupQuery'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UpdateGroupQueryOutput

=head1 ATTRIBUTES


=head2 GroupQuery => ResourceGroups_GroupQuery

The resource query associated with the resource group after the update.


=head2 _request_id => Str


=cut

