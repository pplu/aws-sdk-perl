
package Paws::ServiceCatalog::CreateProvisionedProductPlan;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has NotificationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PathId => (is => 'ro', isa => 'Str');
  has PlanName => (is => 'ro', isa => 'Str', required => 1);
  has PlanType => (is => 'ro', isa => 'Str', required => 1);
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedProductName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningParameters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::UpdateProvisioningParameter]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProvisionedProductPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreateProvisionedProductPlanOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProvisionedProductPlan - Arguments for method CreateProvisionedProductPlan on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProvisionedProductPlan on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CreateProvisionedProductPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProvisionedProductPlan.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CreateProvisionedProductPlanOutput =
      $servicecatalog->CreateProvisionedProductPlan(
      IdempotencyToken       => 'MyIdempotencyToken',
      PlanName               => 'MyProvisionedProductPlanName',
      PlanType               => 'CLOUDFORMATION',
      ProductId              => 'MyId',
      ProvisionedProductName => 'MyProvisionedProductName',
      ProvisioningArtifactId => 'MyId',
      AcceptLanguage         => 'MyAcceptLanguage',               # OPTIONAL
      NotificationArns       => [
        'MyNotificationArn', ...    # min: 1, max: 1224
      ],                            # OPTIONAL
      PathId                 => 'MyId',    # OPTIONAL
      ProvisioningParameters => [
        {
          Key              => 'MyParameterKey',    # min: 1, max: 1000; OPTIONAL
          UsePreviousValue => 1,                   # OPTIONAL
          Value            => 'MyParameterValue',  # max: 4096; OPTIONAL
        },
        ...
      ],                                           # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',                     # min: 1, max: 128
          Value => 'MyTagValue',                   # min: 1, max: 256

        },
        ...
      ],                                           # OPTIONAL
      );

    # Results:
    my $PlanId   = $CreateProvisionedProductPlanOutput->PlanId;
    my $PlanName = $CreateProvisionedProductPlanOutput->PlanName;
    my $ProvisionProductId =
      $CreateProvisionedProductPlanOutput->ProvisionProductId;
    my $ProvisionedProductName =
      $CreateProvisionedProductPlanOutput->ProvisionedProductName;
    my $ProvisioningArtifactId =
      $CreateProvisionedProductPlanOutput->ProvisioningArtifactId;

 # Returns a L<Paws::ServiceCatalog::CreateProvisionedProductPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CreateProvisionedProductPlan>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 NotificationArns => ArrayRef[Str|Undef]

Passed to CloudFormation. The SNS topic ARNs to which to publish
stack-related events.



=head2 PathId => Str

The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use ListLaunchPaths.



=head2 B<REQUIRED> PlanName => Str

The name of the plan.



=head2 B<REQUIRED> PlanType => Str

The plan type.

Valid values are: C<"CLOUDFORMATION">

=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 B<REQUIRED> ProvisionedProductName => Str

A user-friendly name for the provisioned product. This value must be
unique for the AWS account and cannot be updated after the product is
provisioned.



=head2 B<REQUIRED> ProvisioningArtifactId => Str

The identifier of the provisioning artifact.



=head2 ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::UpdateProvisioningParameter>]

Parameters specified by the administrator that are required for
provisioning the product.



=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProvisionedProductPlan in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

