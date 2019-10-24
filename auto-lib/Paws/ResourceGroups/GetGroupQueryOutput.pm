
package Paws::ResourceGroups::GetGroupQueryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_GroupQuery/;
  has GroupQuery => (is => 'ro', isa => ResourceGroups_GroupQuery);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GroupQuery' => {
                                 'class' => 'Paws::ResourceGroups::GroupQuery',
                                 'type' => 'ResourceGroups_GroupQuery'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetGroupQueryOutput

=head1 ATTRIBUTES


=head2 GroupQuery => ResourceGroups_GroupQuery

The resource query associated with the specified group.


=head2 _request_id => Str


=cut

