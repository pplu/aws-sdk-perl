# Generated from json/callresult_class.tt

package Paws::Organizations::DescribeHandshakeResponse;
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
                                'type' => 'Organizations_Handshake',
                                'class' => 'Paws::Organizations::Handshake'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeHandshakeResponse

=head1 ATTRIBUTES


=head2 Handshake => Organizations_Handshake

A structure that contains information about the specified handshake.


=head2 _request_id => Str


=cut

1;