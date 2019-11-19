# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeProductAsAdminOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_BudgetDetail ServiceCatalog_Tag ServiceCatalog_TagOptionDetail ServiceCatalog_ProvisioningArtifactSummary ServiceCatalog_ProductViewDetail/;
  has Budgets => (is => 'ro', isa => ArrayRef[ServiceCatalog_BudgetDetail]);
  has ProductViewDetail => (is => 'ro', isa => ServiceCatalog_ProductViewDetail);
  has ProvisioningArtifactSummaries => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisioningArtifactSummary]);
  has TagOptions => (is => 'ro', isa => ArrayRef[ServiceCatalog_TagOptionDetail]);
  has Tags => (is => 'ro', isa => ArrayRef[ServiceCatalog_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Budgets' => {
                              'class' => 'Paws::ServiceCatalog::BudgetDetail',
                              'type' => 'ArrayRef[ServiceCatalog_BudgetDetail]'
                            },
               'Tags' => {
                           'type' => 'ArrayRef[ServiceCatalog_Tag]',
                           'class' => 'Paws::ServiceCatalog::Tag'
                         },
               'ProductViewDetail' => {
                                        'type' => 'ServiceCatalog_ProductViewDetail',
                                        'class' => 'Paws::ServiceCatalog::ProductViewDetail'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProvisioningArtifactSummaries' => {
                                                    'type' => 'ArrayRef[ServiceCatalog_ProvisioningArtifactSummary]',
                                                    'class' => 'Paws::ServiceCatalog::ProvisioningArtifactSummary'
                                                  },
               'TagOptions' => {
                                 'type' => 'ArrayRef[ServiceCatalog_TagOptionDetail]',
                                 'class' => 'Paws::ServiceCatalog::TagOptionDetail'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProductAsAdminOutput

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[ServiceCatalog_BudgetDetail]

Information about the associated budgets.


=head2 ProductViewDetail => ServiceCatalog_ProductViewDetail

Information about the product view.


=head2 ProvisioningArtifactSummaries => ArrayRef[ServiceCatalog_ProvisioningArtifactSummary]

Information about the provisioning artifacts (also known as versions)
for the specified product.


=head2 TagOptions => ArrayRef[ServiceCatalog_TagOptionDetail]

Information about the TagOptions associated with the product.


=head2 Tags => ArrayRef[ServiceCatalog_Tag]

Information about the tags associated with the product.


=head2 _request_id => Str


=cut

1;