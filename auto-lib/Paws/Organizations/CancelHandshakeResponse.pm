# Generated from json/callresult_class.tt

package Paws::Organizations::CancelHandshakeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_Handshake/;
  has Handshake => (is => 'ro', isa => Organizations_Handshake);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Handshake' => {
                                'class' => 'Paws::Organizations::Handshake',
                                'type' => 'Organizations_Handshake'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CancelHandshakeResponse

=head1 ATTRIBUTES


=head2 Handshake => Organizations_Handshake

A structure that contains details about the handshake that you
canceled.


=head2 _request_id => Str


=cut

1;