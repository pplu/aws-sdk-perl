
package Paws::ServiceCatalog::CreateProvisioningArtifact;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactProperties', required => 1);
  has ProductId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProvisioningArtifact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreateProvisioningArtifactOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProvisioningArtifact - Arguments for method CreateProvisioningArtifact on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProvisioningArtifact on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CreateProvisioningArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProvisioningArtifact.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CreateProvisioningArtifactOutput =
      $servicecatalog->CreateProvisioningArtifact(
      IdempotencyToken => 'MyIdempotencyToken',
      Parameters       => {
        Info => {
          'MyProvisioningArtifactInfoKey' => 'MyProvisioningArtifactInfoValue',
        },    # min: 1, max: 100
        Description => 'MyProvisioningArtifactDescription',    # OPTIONAL
        Name        => 'MyProvisioningArtifactName',           # OPTIONAL
        Type        => 'CLOUD_FORMATION_TEMPLATE'
        , # values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR; OPTIONAL
      },
      ProductId      => 'MyId',
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      );

    # Results:
    my $Info = $CreateProvisioningArtifactOutput->Info;
    my $ProvisioningArtifactDetail =
      $CreateProvisioningArtifactOutput->ProvisioningArtifactDetail;
    my $Status = $CreateProvisioningArtifactOutput->Status;

   # Returns a L<Paws::ServiceCatalog::CreateProvisioningArtifactOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CreateProvisioningArtifact>

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



=head2 B<REQUIRED> Parameters => L<Paws::ServiceCatalog::ProvisioningArtifactProperties>

The configuration for the provisioning artifact.



=head2 B<REQUIRED> ProductId => Str

The product identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProvisioningArtifact in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

