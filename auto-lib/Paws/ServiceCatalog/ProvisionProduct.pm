
package Paws::ServiceCatalog::ProvisionProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has NotificationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PathId => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedProductName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningParameters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningParameter]');
  has ProvisioningPreferences => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningPreferences');
  has ProvisionToken => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ProvisionProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ProvisionProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisionProduct - Arguments for method ProvisionProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ProvisionProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ProvisionProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ProvisionProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ProvisionProductOutput = $servicecatalog->ProvisionProduct(
      ProductId              => 'MyId',
      ProvisionToken         => 'MyIdempotencyToken',
      ProvisionedProductName => 'MyProvisionedProductName',
      ProvisioningArtifactId => 'MyId',
      AcceptLanguage         => 'MyAcceptLanguage',           # OPTIONAL
      NotificationArns       => [
        'MyNotificationArn', ...    # min: 1, max: 1224
      ],                            # OPTIONAL
      PathId                 => 'MyId',    # OPTIONAL
      ProvisioningParameters => [
        {
          Key   => 'MyParameterKey',       # min: 1, max: 1000; OPTIONAL
          Value => 'MyParameterValue',     # max: 4096; OPTIONAL
        },
        ...
      ],                                   # OPTIONAL
      ProvisioningPreferences => {
        StackSetAccounts              => [ 'MyAccountId', ... ],    # OPTIONAL
        StackSetFailureToleranceCount => 1,                         # OPTIONAL
        StackSetFailureTolerancePercentage => 1,    # max: 100; OPTIONAL
        StackSetMaxConcurrencyCount        => 1,    # min: 1; OPTIONAL
        StackSetMaxConcurrencyPercentage   => 1,    # min: 1, max: 100; OPTIONAL
        StackSetRegions => [ 'MyRegion', ... ],     # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $RecordDetail = $ProvisionProductOutput->RecordDetail;

    # Returns a L<Paws::ServiceCatalog::ProvisionProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ProvisionProduct>

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




=head2 NotificationArns => ArrayRef[Str|Undef]

Passed to CloudFormation. The SNS topic ARNs to which to publish
stack-related events.



=head2 PathId => Str

The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use ListLaunchPaths.



=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 B<REQUIRED> ProvisionedProductName => Str

A user-friendly name for the provisioned product. This value must be
unique for the AWS account and cannot be updated after the product is
provisioned.



=head2 B<REQUIRED> ProvisioningArtifactId => Str

The identifier of the provisioning artifact.



=head2 ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::ProvisioningParameter>]

Parameters specified by the administrator that are required for
provisioning the product.



=head2 ProvisioningPreferences => L<Paws::ServiceCatalog::ProvisioningPreferences>

An object that contains information about the provisioning preferences
for a stack set.



=head2 B<REQUIRED> ProvisionToken => Str

An idempotency token that uniquely identifies the provisioning request.



=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ProvisionProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

