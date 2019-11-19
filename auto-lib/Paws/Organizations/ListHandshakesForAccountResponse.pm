# Generated from json/callresult_class.tt

package Paws::Organizations::ListHandshakesForAccountResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_Handshake/;
  has Handshakes => (is => 'ro', isa => ArrayRef[Organizations_Handshake]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Handshakes' => {
                                 'class' => 'Paws::Organizations::Handshake',
                                 'type' => 'ArrayRef[Organizations_Handshake]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListHandshakesForAccountResponse

=head1 ATTRIBUTES


=head2 Handshakes => ArrayRef[Organizations_Handshake]

A list of Handshake objects with details about each of the handshakes
that is associated with the specified account.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;