# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ListUserPoolClientsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserPoolClientDescription/;
  has NextToken => (is => 'ro', isa => Str);
  has UserPoolClients => (is => 'ro', isa => ArrayRef[CognitoIdp_UserPoolClientDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserPoolClients' => {
                                      'type' => 'ArrayRef[CognitoIdp_UserPoolClientDescription]',
                                      'class' => 'Paws::CognitoIdp::UserPoolClientDescription'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserPoolClientsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 UserPoolClients => ArrayRef[CognitoIdp_UserPoolClientDescription]

The user pool clients in the response that lists user pool clients.


=head2 _request_id => Str


=cut

1;