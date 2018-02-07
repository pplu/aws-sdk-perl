
package Paws::ServiceCatalog::DescribeProvisionedProductOutput;
  use Moose;
  has CloudWatchDashboards => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::CloudWatchDashboard]');
  has ProvisionedProductDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisionedProductDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisionedProductOutput

=head1 ATTRIBUTES


=head2 CloudWatchDashboards => ArrayRef[L<Paws::ServiceCatalog::CloudWatchDashboard>]

Any CloudWatch dashboards that were created when provisioning the
product.


=head2 ProvisionedProductDetail => L<Paws::ServiceCatalog::ProvisionedProductDetail>

Information about the provisioned product.


=head2 _request_id => Str


=cut

1;