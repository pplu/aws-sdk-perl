# Generated from json/callresult_class.tt

package Paws::SSM::TerminateSessionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has SessionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SessionId' => {
                                'type' => 'Str'
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

Paws::SSM::TerminateSessionResponse

=head1 ATTRIBUTES


=head2 SessionId => Str

The ID of the session that has been terminated.


=head2 _request_id => Str


=cut

1;