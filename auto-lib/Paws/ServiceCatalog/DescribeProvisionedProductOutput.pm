# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeProvisionedProductOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisionedProductDetail ServiceCatalog_CloudWatchDashboard/;
  has CloudWatchDashboards => (is => 'ro', isa => ArrayRef[ServiceCatalog_CloudWatchDashboard]);
  has ProvisionedProductDetail => (is => 'ro', isa => ServiceCatalog_ProvisionedProductDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProvisionedProductDetail' => {
                                               'class' => 'Paws::ServiceCatalog::ProvisionedProductDetail',
                                               'type' => 'ServiceCatalog_ProvisionedProductDetail'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CloudWatchDashboards' => {
                                           'type' => 'ArrayRef[ServiceCatalog_CloudWatchDashboard]',
                                           'class' => 'Paws::ServiceCatalog::CloudWatchDashboard'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisionedProductOutput

=head1 ATTRIBUTES


=head2 CloudWatchDashboards => ArrayRef[ServiceCatalog_CloudWatchDashboard]

Any CloudWatch dashboards that were created when provisioning the
product.


=head2 ProvisionedProductDetail => ServiceCatalog_ProvisionedProductDetail

Information about the provisioned product.


=head2 _request_id => Str


=cut

1;