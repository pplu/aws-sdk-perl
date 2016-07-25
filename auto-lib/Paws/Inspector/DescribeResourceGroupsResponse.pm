
package Paws::Inspector::DescribeResourceGroupsResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'HashRef[Paws::Inspector::FailedItemDetails]', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);
  has ResourceGroups => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::ResourceGroup]', traits => ['Unwrapped'], xmlname => 'resourceGroups' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeResourceGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => HashRef[L<Paws::Inspector::FailedItemDetails>]

Resource group details that cannot be described. An error code is
provided for each failed item.



=head2 B<REQUIRED> ResourceGroups => ArrayRef[L<Paws::Inspector::ResourceGroup>]

Information about a resource group.




=cut

1;