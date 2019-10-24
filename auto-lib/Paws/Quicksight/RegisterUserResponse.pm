
package Paws::Quicksight::RegisterUserResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Quicksight::Types qw/Quicksight_User/;
  has RequestId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Int);
  has User => (is => 'ro', isa => Quicksight_User);
  has UserInvitationUrl => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestId' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Int'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserInvitationUrl' => {
                                        'type' => 'Str'
                                      },
               'User' => {
                           'class' => 'Paws::Quicksight::User',
                           'type' => 'Quicksight_User'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::RegisterUserResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 User => Quicksight_User

The user name.


=head2 UserInvitationUrl => Str

The URL the user visits to complete registration and provide a
password. This is returned only for users with an identity type of
C<QUICKSIGHT>.


=head2 _request_id => Str


=cut

