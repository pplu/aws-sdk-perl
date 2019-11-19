
package Paws::SecurityHub::GetInvitationsCountResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SecurityHub::Types qw//;
  has InvitationsCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InvitationsCount' => {
                                       'type' => 'Int'
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

Paws::SecurityHub::GetInvitationsCountResponse

=head1 ATTRIBUTES


=head2 InvitationsCount => Int

The number of all membership invitations sent to this Security Hub
member account, not including the currently accepted invitation.


=head2 _request_id => Str


=cut

