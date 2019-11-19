
package Paws::EC2::DeleteClientVpnEndpointResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ClientVpnEndpointStatus/;
  has Status => (is => 'ro', isa => EC2_ClientVpnEndpointStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'EC2_ClientVpnEndpointStatus',
                             'class' => 'Paws::EC2::ClientVpnEndpointStatus'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteClientVpnEndpointResult

=head1 ATTRIBUTES


=head2 Status => EC2_ClientVpnEndpointStatus

The current state of the Client VPN endpoint.


=head2 _request_id => Str


=cut

