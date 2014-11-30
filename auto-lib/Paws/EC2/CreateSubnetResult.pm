
package Paws::EC2::CreateSubnetResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Subnet => (is => 'ro', isa => 'Paws::EC2::Subnet', traits => ['Unwrapped'], xmlname => 'subnet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSubnetResult

=head1 ATTRIBUTES

=head2 Subnet => Paws::EC2::Subnet

  

Information about the subnet.











=cut

