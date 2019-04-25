package Paws::ServiceCatalog::ProvisionedProductPlanSummary;
  use Moose;
  has PlanId => (is => 'ro', isa => 'Str');
  has PlanName => (is => 'ro', isa => 'Str');
  has PlanType => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str');
  has ProvisionProductId => (is => 'ro', isa => 'Str');
  has ProvisionProductName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisionedProductPlanSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisionedProductPlanSummary object:

  $service_obj->Method(Att1 => { PlanId => $value, ..., ProvisionProductName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisionedProductPlanSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->PlanId

=head1 DESCRIPTION

Summary information about a plan.

=head1 ATTRIBUTES


=head2 PlanId => Str

  The plan identifier.


=head2 PlanName => Str

  The name of the plan.


=head2 PlanType => Str

  The plan type.


=head2 ProvisioningArtifactId => Str

  The identifier of the provisioning artifact.


=head2 ProvisionProductId => Str

  The product identifier.


=head2 ProvisionProductName => Str

  The user-friendly name of the provisioned product.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

