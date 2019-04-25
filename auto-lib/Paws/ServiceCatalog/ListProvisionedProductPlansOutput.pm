
package Paws::ServiceCatalog::ListProvisionedProductPlansOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProvisionedProductPlans => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisionedProductPlanSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListProvisionedProductPlansOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisionedProductPlans => ArrayRef[L<Paws::ServiceCatalog::ProvisionedProductPlanSummary>]

Information about the plans.


=head2 _request_id => Str


=cut

1;