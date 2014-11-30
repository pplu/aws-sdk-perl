
package Paws::EC2::DescribeVpcsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Vpc]', traits => ['Unwrapped'], xmlname => 'vpcSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcsResult

=head1 ATTRIBUTES

=head2 Vpcs => ArrayRef[Paws::EC2::Vpc]

  

Information about one or more VPCs.











=cut

