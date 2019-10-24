# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::CreateServerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorksCM::Types qw/OpsWorksCM_Server/;
  has Server => (is => 'ro', isa => OpsWorksCM_Server);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Server' => {
                             'class' => 'Paws::OpsWorksCM::Server',
                             'type' => 'OpsWorksCM_Server'
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

Paws::OpsWorksCM::CreateServerResponse

=head1 ATTRIBUTES


=head2 Server => OpsWorksCM_Server

The server that is created by the request.


=head2 _request_id => Str


=cut

1;