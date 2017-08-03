
package Paws::EC2::CreateNetworkInterfacePermissionResult;
  use Moose;
  has InterfacePermission => (is => 'ro', isa => 'Paws::EC2::NetworkInterfacePermission', request_name => 'interfacePermission', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInterfacePermissionResult

=head1 ATTRIBUTES


=head2 InterfacePermission => L<Paws::EC2::NetworkInterfacePermission>

Information about the permission for the network interface.


=head2 _request_id => Str


=cut

