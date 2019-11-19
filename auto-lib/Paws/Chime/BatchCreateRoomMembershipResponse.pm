
package Paws::Chime::BatchCreateRoomMembershipResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_MemberError/;
  has Errors => (is => 'ro', isa => ArrayRef[Chime_MemberError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Errors' => {
                             'type' => 'ArrayRef[Chime_MemberError]',
                             'class' => 'Paws::Chime::MemberError'
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

Paws::Chime::BatchCreateRoomMembershipResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[Chime_MemberError]

If the action fails for one or more of the member IDs in the request, a
list of the member IDs is returned, along with error codes and error
messages.


=head2 _request_id => Str


=cut

