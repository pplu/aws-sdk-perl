# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ListUserPoolsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserPoolDescriptionType/;
  has NextToken => (is => 'ro', isa => Str);
  has UserPools => (is => 'ro', isa => ArrayRef[CognitoIdp_UserPoolDescriptionType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserPools' => {
                                'type' => 'ArrayRef[CognitoIdp_UserPoolDescriptionType]',
                                'class' => 'Paws::CognitoIdp::UserPoolDescriptionType'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserPoolsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 UserPools => ArrayRef[CognitoIdp_UserPoolDescriptionType]

The user pools from the response to list users.


=head2 _request_id => Str


=cut

1;