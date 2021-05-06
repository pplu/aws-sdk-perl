
package Paws::ServiceCatalog::DescribeProvisioningParameters;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has PathId => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProvisioningParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribeProvisioningParametersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisioningParameters - Arguments for method DescribeProvisioningParameters on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProvisioningParameters on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DescribeProvisioningParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProvisioningParameters.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DescribeProvisioningParametersOutput =
      $servicecatalog->DescribeProvisioningParameters(
      ProductId              => 'MyId',
      ProvisioningArtifactId => 'MyId',
      AcceptLanguage         => 'MyAcceptLanguage',    # OPTIONAL
      PathId                 => 'MyId',                # OPTIONAL
      );

    # Results:
    my $ConstraintSummaries =
      $DescribeProvisioningParametersOutput->ConstraintSummaries;
    my $ProvisioningArtifactParameters =
      $DescribeProvisioningParametersOutput->ProvisioningArtifactParameters;
    my $ProvisioningArtifactPreferences =
      $DescribeProvisioningParametersOutput->ProvisioningArtifactPreferences;
    my $TagOptions = $DescribeProvisioningParametersOutput->TagOptions;
    my $UsageInstructions =
      $DescribeProvisioningParametersOutput->UsageInstructions;

# Returns a L<Paws::ServiceCatalog::DescribeProvisioningParametersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DescribeProvisioningParameters>

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




=head2 PathId => Str

The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use ListLaunchPaths.



=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 B<REQUIRED> ProvisioningArtifactId => Str

The identifier of the provisioning artifact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProvisioningParameters in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

