
package Paws::ResourceGroups::GetGroupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_Group/;
  has Group => (is => 'ro', isa => ResourceGroups_Group);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::ResourceGroups::GetGroupOutput

=head1 ATTRIBUTES


=head2 Group => ResourceGroups_Group

A full description of the resource group.


=head2 _request_id => Str


=cut

