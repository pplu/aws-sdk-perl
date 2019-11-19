# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ListGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_GroupType/;
  has Groups => (is => 'ro', isa => ArrayRef[CognitoIdp_GroupType]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::CognitoIdp::GroupType',
                             'type' => 'ArrayRef[CognitoIdp_GroupType]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[CognitoIdp_GroupType]

The group objects for the groups.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

1;