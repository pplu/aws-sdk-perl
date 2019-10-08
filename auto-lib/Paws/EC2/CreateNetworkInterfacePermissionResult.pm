
package Paws::EC2::CreateNetworkInterfacePermissionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_NetworkInterfacePermission/;
  has InterfacePermission => (is => 'ro', isa => EC2_NetworkInterfacePermission);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InterfacePermission' => {
                                          'class' => 'Paws::EC2::NetworkInterfacePermission',
                                          'type' => 'EC2_NetworkInterfacePermission'
                                        }
             },
  'NameInRequest' => {
                       'InterfacePermission' => 'interfacePermission'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInterfacePermissionResult

=head1 ATTRIBUTES


=head2 InterfacePermission => EC2_NetworkInterfacePermission

Information about the permission for the network interface.


=head2 _request_id => Str


=cut

