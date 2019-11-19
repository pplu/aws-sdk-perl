
package Paws::EC2::CreateNetworkInterfaceResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_NetworkInterface/;
  has NetworkInterface => (is => 'ro', isa => EC2_NetworkInterface);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NetworkInterface' => 'networkInterface'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NetworkInterface' => {
                                       'class' => 'Paws::EC2::NetworkInterface',
                                       'type' => 'EC2_NetworkInterface'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInterfaceResult

=head1 ATTRIBUTES


=head2 NetworkInterface => EC2_NetworkInterface

Information about the network interface.


=head2 _request_id => Str


=cut

