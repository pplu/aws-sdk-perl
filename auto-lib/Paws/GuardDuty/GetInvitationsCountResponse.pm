
package Paws::GuardDuty::GetInvitationsCountResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GuardDuty::Types qw//;
  has InvitationsCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InvitationsCount' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'InvitationsCount' => 'invitationsCount'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetInvitationsCountResponse

=head1 ATTRIBUTES


=head2 InvitationsCount => Int

The number of received invitations.


=head2 _request_id => Str


=cut

