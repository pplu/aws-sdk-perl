# Generated from json/callresult_class.tt

package Paws::Organizations::AcceptHandshakeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_Handshake/;
  has Handshake => (is => 'ro', isa => Organizations_Handshake);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Handshake' => {
                                'type' => 'Organizations_Handshake',
                                'class' => 'Paws::Organizations::Handshake'
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

Paws::Organizations::AcceptHandshakeResponse

=head1 ATTRIBUTES


=head2 Handshake => Organizations_Handshake

A structure that contains details about the accepted handshake.


=head2 _request_id => Str


=cut

1;