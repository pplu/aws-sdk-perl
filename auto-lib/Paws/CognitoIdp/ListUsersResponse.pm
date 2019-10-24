# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ListUsersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserType/;
  has PaginationToken => (is => 'ro', isa => Str);
  has Users => (is => 'ro', isa => ArrayRef[CognitoIdp_UserType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PaginationToken' => {
                                      'type' => 'Str'
                                    },
               'Users' => {
                            'class' => 'Paws::CognitoIdp::UserType',
                            'type' => 'ArrayRef[CognitoIdp_UserType]'
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

Paws::CognitoIdp::ListUsersResponse

=head1 ATTRIBUTES


=head2 PaginationToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 Users => ArrayRef[CognitoIdp_UserType]

The users returned in the request to list users.


=head2 _request_id => Str


=cut

1;