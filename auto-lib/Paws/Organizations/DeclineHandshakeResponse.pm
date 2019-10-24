# Generated from json/callresult_class.tt

package Paws::Organizations::DeclineHandshakeResponse;
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

Paws::Organizations::DeclineHandshakeResponse

=head1 ATTRIBUTES


=head2 Handshake => Organizations_Handshake

A structure that contains details about the declined handshake. The
state is updated to show the value C<DECLINED>.


=head2 _request_id => Str


=cut

1;