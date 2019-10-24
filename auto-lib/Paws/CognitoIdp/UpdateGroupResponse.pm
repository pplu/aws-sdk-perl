# Generated from json/callresult_class.tt

package Paws::CognitoIdp::UpdateGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_GroupType/;
  has Group => (is => 'ro', isa => CognitoIdp_GroupType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Group' => {
                            'class' => 'Paws::CognitoIdp::GroupType',
                            'type' => 'CognitoIdp_GroupType'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateGroupResponse

=head1 ATTRIBUTES


=head2 Group => CognitoIdp_GroupType

The group object for the group.


=head2 _request_id => Str


=cut

1;