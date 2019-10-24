
package Paws::Chime::InviteUsersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_Invite/;
  has Invites => (is => 'ro', isa => ArrayRef[Chime_Invite]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Invites' => {
                              'class' => 'Paws::Chime::Invite',
                              'type' => 'ArrayRef[Chime_Invite]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::InviteUsersResponse

=head1 ATTRIBUTES


=head2 Invites => ArrayRef[Chime_Invite]

The invite details.


=head2 _request_id => Str


=cut

