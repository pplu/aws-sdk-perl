
package Paws::Inspector::DescribeResourceGroupResponse;
  use Moose;
  has ResourceGroup => (is => 'ro', isa => 'Paws::Inspector::ResourceGroup', traits => ['Unwrapped'], xmlname => 'resourceGroup' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeResourceGroupResponse

=head1 ATTRIBUTES


=head2 ResourceGroup => L<Paws::Inspector::ResourceGroup>

  Information about the resource group.


=cut

1;