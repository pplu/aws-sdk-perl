
package Paws::ServiceCatalog::ListStackInstancesForProvisionedProductOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has StackInstances => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::StackInstance]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListStackInstancesForProvisionedProductOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 StackInstances => ArrayRef[L<Paws::ServiceCatalog::StackInstance>]

List of stack instances.


=head2 _request_id => Str


=cut

1;