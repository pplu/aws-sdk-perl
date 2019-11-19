# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::CreateProvisionedProductPlanOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;
  has PlanId => (is => 'ro', isa => Str);
  has PlanName => (is => 'ro', isa => Str);
  has ProvisionedProductName => (is => 'ro', isa => Str);
  has ProvisioningArtifactId => (is => 'ro', isa => Str);
  has ProvisionProductId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlanId' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PlanName' => {
                               'type' => 'Str'
                             },
               'ProvisionProductId' => {
                                         'type' => 'Str'
                                       },
               'ProvisioningArtifactId' => {
                                             'type' => 'Str'
                                           },
               'ProvisionedProductName' => {
                                             'type' => 'Str'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProvisionedProductPlanOutput

=head1 ATTRIBUTES


=head2 PlanId => Str

The plan identifier.


=head2 PlanName => Str

The name of the plan.


=head2 ProvisionedProductName => Str

The user-friendly name of the provisioned product.


=head2 ProvisioningArtifactId => Str

The identifier of the provisioning artifact.


=head2 ProvisionProductId => Str

The product identifier.


=head2 _request_id => Str


=cut

1;