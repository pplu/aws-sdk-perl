
package Paws::ServiceCatalog::UpdateProvisioningArtifact;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Active => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProvisioningArtifact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdateProvisioningArtifactOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisioningArtifact - Arguments for method UpdateProvisioningArtifact on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProvisioningArtifact on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdateProvisioningArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProvisioningArtifact.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdateProvisioningArtifactOutput =
      $servicecatalog->UpdateProvisioningArtifact(
      ProductId              => 'MyId',
      ProvisioningArtifactId => 'MyId',
      AcceptLanguage         => 'MyAcceptLanguage',                   # OPTIONAL
      Active                 => 1,                                    # OPTIONAL
      Description            => 'MyProvisioningArtifactDescription',  # OPTIONAL
      Name                   => 'MyProvisioningArtifactName',         # OPTIONAL
      );

    # Results:
    my $Info = $UpdateProvisioningArtifactOutput->Info;
    my $ProvisioningArtifactDetail =
      $UpdateProvisioningArtifactOutput->ProvisioningArtifactDetail;
    my $Status = $UpdateProvisioningArtifactOutput->Status;

   # Returns a L<Paws::ServiceCatalog::UpdateProvisioningArtifactOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdateProvisioningArtifact>

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




=head2 Active => Bool

Indicates whether the product version is active.



=head2 Description => Str

The updated description of the provisioning artifact.



=head2 Name => Str

The updated name of the provisioning artifact.



=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 B<REQUIRED> ProvisioningArtifactId => Str

The identifier of the provisioning artifact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProvisioningArtifact in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

