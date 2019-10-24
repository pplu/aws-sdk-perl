
package Paws::PinpointEmail::GetDedicatedIpResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_DedicatedIp/;
  has DedicatedIp => (is => 'ro', isa => PinpointEmail_DedicatedIp);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DedicatedIp' => {
                                  'class' => 'Paws::PinpointEmail::DedicatedIp',
                                  'type' => 'PinpointEmail_DedicatedIp'
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

Paws::PinpointEmail::GetDedicatedIpResponse

=head1 ATTRIBUTES


=head2 DedicatedIp => PinpointEmail_DedicatedIp

An object that contains information about a dedicated IP address.


=head2 _request_id => Str


=cut

