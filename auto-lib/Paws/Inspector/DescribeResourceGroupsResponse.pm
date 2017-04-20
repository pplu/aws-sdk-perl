
package Paws::Inspector::DescribeResourceGroupsResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['NameInRequest'], request_name => 'failedItems' , required => 1);
  has ResourceGroups => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::ResourceGroup]', traits => ['NameInRequest'], request_name => 'resourceGroups' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeResourceGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Resource group details that cannot be described. An error code is
provided for each failed item.


=head2 B<REQUIRED> ResourceGroups => ArrayRef[L<Paws::Inspector::ResourceGroup>]

Information about a resource group.


=head2 _request_id => Str


=cut

1;