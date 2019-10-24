# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeProvisionedProductPlanOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisionedProductPlanDetails ServiceCatalog_ResourceChange/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ProvisionedProductPlanDetails => (is => 'ro', isa => ServiceCatalog_ProvisionedProductPlanDetails);
  has ResourceChanges => (is => 'ro', isa => ArrayRef[ServiceCatalog_ResourceChange]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceChanges' => {
                                      'class' => 'Paws::ServiceCatalog::ResourceChange',
                                      'type' => 'ArrayRef[ServiceCatalog_ResourceChange]'
                                    },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'ProvisionedProductPlanDetails' => {
                                                    'class' => 'Paws::ServiceCatalog::ProvisionedProductPlanDetails',
                                                    'type' => 'ServiceCatalog_ProvisionedProductPlanDetails'
                                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisionedProductPlanOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisionedProductPlanDetails => ServiceCatalog_ProvisionedProductPlanDetails

Information about the plan.


=head2 ResourceChanges => ArrayRef[ServiceCatalog_ResourceChange]

Information about the resource changes that will occur when the plan is
executed.


=head2 _request_id => Str


=cut

1;