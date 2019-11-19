# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::CreateProductOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_Tag ServiceCatalog_ProvisioningArtifactDetail ServiceCatalog_ProductViewDetail/;
  has ProductViewDetail => (is => 'ro', isa => ServiceCatalog_ProductViewDetail);
  has ProvisioningArtifactDetail => (is => 'ro', isa => ServiceCatalog_ProvisioningArtifactDetail);
  has Tags => (is => 'ro', isa => ArrayRef[ServiceCatalog_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProvisioningArtifactDetail' => {
                                                 'type' => 'ServiceCatalog_ProvisioningArtifactDetail',
                                                 'class' => 'Paws::ServiceCatalog::ProvisioningArtifactDetail'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProductViewDetail' => {
                                        'class' => 'Paws::ServiceCatalog::ProductViewDetail',
                                        'type' => 'ServiceCatalog_ProductViewDetail'
                                      },
               'Tags' => {
                           'class' => 'Paws::ServiceCatalog::Tag',
                           'type' => 'ArrayRef[ServiceCatalog_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProductOutput

=head1 ATTRIBUTES


=head2 ProductViewDetail => ServiceCatalog_ProductViewDetail

Information about the product view.


=head2 ProvisioningArtifactDetail => ServiceCatalog_ProvisioningArtifactDetail

Information about the provisioning artifact.


=head2 Tags => ArrayRef[ServiceCatalog_Tag]

Information about the tags associated with the product.


=head2 _request_id => Str


=cut

1;