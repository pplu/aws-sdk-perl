
package Paws::Chime::ListUsersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_User/;
  has NextToken => (is => 'ro', isa => Str);
  has Users => (is => 'ro', isa => ArrayRef[Chime_User]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Users' => {
                            'type' => 'ArrayRef[Chime_User]',
                            'class' => 'Paws::Chime::User'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 Users => ArrayRef[Chime_User]

List of users and user details.


=head2 _request_id => Str


=cut

