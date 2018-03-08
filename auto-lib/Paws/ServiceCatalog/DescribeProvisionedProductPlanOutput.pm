
package Paws::ServiceCatalog::DescribeProvisionedProductPlanOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProvisionedProductPlanDetails => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisionedProductPlanDetails');
  has ResourceChanges => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ResourceChange]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisionedProductPlanOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisionedProductPlanDetails => L<Paws::ServiceCatalog::ProvisionedProductPlanDetails>

Information about the plan.


=head2 ResourceChanges => ArrayRef[L<Paws::ServiceCatalog::ResourceChange>]

Information about the resource changes that will occur when the plan is
executed.


=head2 _request_id => Str


=cut

1;