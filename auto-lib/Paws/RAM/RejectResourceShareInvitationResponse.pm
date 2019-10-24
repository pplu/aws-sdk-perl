
package Paws::RAM::RejectResourceShareInvitationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RAM::Types qw/RAM_ResourceShareInvitation/;
  has ClientToken => (is => 'ro', isa => Str);
  has ResourceShareInvitation => (is => 'ro', isa => RAM_ResourceShareInvitation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceShareInvitation' => {
                                              'class' => 'Paws::RAM::ResourceShareInvitation',
                                              'type' => 'RAM_ResourceShareInvitation'
                                            },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ResourceShareInvitation' => 'resourceShareInvitation',
                       'ClientToken' => 'clientToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::RejectResourceShareInvitationResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 ResourceShareInvitation => RAM_ResourceShareInvitation

Information about the invitation.


=head2 _request_id => Str


=cut

