
package Paws::ServiceCatalog::ListProvisioningArtifacts;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProvisioningArtifacts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ListProvisioningArtifactsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListProvisioningArtifacts - Arguments for method ListProvisioningArtifacts on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProvisioningArtifacts on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ListProvisioningArtifacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProvisioningArtifacts.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ListProvisioningArtifactsOutput =
      $servicecatalog->ListProvisioningArtifacts(
      ProductId      => 'MyId',
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      );

    # Results:
    my $NextPageToken = $ListProvisioningArtifactsOutput->NextPageToken;
    my $ProvisioningArtifactDetails =
      $ListProvisioningArtifactsOutput->ProvisioningArtifactDetails;

    # Returns a L<Paws::ServiceCatalog::ListProvisioningArtifactsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ListProvisioningArtifacts>

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




=head2 B<REQUIRED> ProductId => Str

The product identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProvisioningArtifacts in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

