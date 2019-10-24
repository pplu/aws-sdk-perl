# Generated from json/callresult_class.tt

package Paws::WorkMail::ListUsersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkMail::Types qw/WorkMail_User/;
  has NextToken => (is => 'ro', isa => Str);
  has Users => (is => 'ro', isa => ArrayRef[WorkMail_User]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Users' => {
                            'class' => 'Paws::WorkMail::User',
                            'type' => 'ArrayRef[WorkMail_User]'
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

Paws::WorkMail::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
`null` when there are no more results to return.


=head2 Users => ArrayRef[WorkMail_User]

The overview of users for an organization.


=head2 _request_id => Str


=cut

1;