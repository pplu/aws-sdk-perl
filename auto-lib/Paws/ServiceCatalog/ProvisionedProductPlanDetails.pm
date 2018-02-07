package Paws::ServiceCatalog::ProvisionedProductPlanDetails;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has NotificationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PathId => (is => 'ro', isa => 'Str');
  has PlanId => (is => 'ro', isa => 'Str');
  has PlanName => (is => 'ro', isa => 'Str');
  has PlanType => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str');
  has ProvisioningParameters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::UpdateProvisioningParameter]');
  has ProvisionProductId => (is => 'ro', isa => 'Str');
  has ProvisionProductName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');
  has UpdatedTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisionedProductPlanDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisionedProductPlanDetails object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., UpdatedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisionedProductPlanDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

Information about a plan.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The UTC time stamp of the creation time.


=head2 NotificationArns => ArrayRef[Str|Undef]

  Passed to CloudFormation. The SNS topic ARNs to which to publish
stack-related events.


=head2 PathId => Str

  The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use ListLaunchPaths.


=head2 PlanId => Str

  The plan identifier.


=head2 PlanName => Str

  The name of the plan.


=head2 PlanType => Str

  The plan type.


=head2 ProductId => Str

  The product identifier.


=head2 ProvisioningArtifactId => Str

  The identifier of the provisioning artifact.


=head2 ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::UpdateProvisioningParameter>]

  Parameters specified by the administrator that are required for
provisioning the product.


=head2 ProvisionProductId => Str

  The product identifier.


=head2 ProvisionProductName => Str

  The user-friendly name of the provisioned product.


=head2 Status => Str

  The status.


=head2 StatusMessage => Str

  The status message.


=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

  One or more tags.


=head2 UpdatedTime => Str

  The time when the plan was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

