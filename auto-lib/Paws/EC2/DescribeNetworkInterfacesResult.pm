
package Paws::EC2::DescribeNetworkInterfacesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfacesResult

=head1 ATTRIBUTES

=head2 NetworkInterfaces => ArrayRef[Paws::EC2::NetworkInterface]

  

Information about one or more network interfaces.











=cut

