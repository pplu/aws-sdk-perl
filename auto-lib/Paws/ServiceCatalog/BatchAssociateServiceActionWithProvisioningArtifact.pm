# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifact;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ServiceActionAssociation/;
  has AcceptLanguage => (is => 'ro', isa => Str, predicate => 1);
  has ServiceActionAssociations => (is => 'ro', isa => ArrayRef[ServiceCatalog_ServiceActionAssociation], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchAssociateServiceActionWithProvisioningArtifact');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifactOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AcceptLanguage' => {
                                     'type' => 'Str'
                                   },
               'ServiceActionAssociations' => {
                                                'class' => 'Paws::ServiceCatalog::ServiceActionAssociation',
                                                'type' => 'ArrayRef[ServiceCatalog_ServiceActionAssociation]'
                                              }
             },
  'IsRequired' => {
                    'ServiceActionAssociations' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifact - Arguments for method BatchAssociateServiceActionWithProvisioningArtifact on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchAssociateServiceActionWithProvisioningArtifact on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method BatchAssociateServiceActionWithProvisioningArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchAssociateServiceActionWithProvisioningArtifact.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $BatchAssociateServiceActionWithProvisioningArtifactOutput =
      $servicecatalog->BatchAssociateServiceActionWithProvisioningArtifact(
      ServiceActionAssociations => [
        {
          ProductId              => 'MyId',    # min: 1, max: 100
          ProvisioningArtifactId => 'MyId',    # min: 1, max: 100
          ServiceActionId        => 'MyId',    # min: 1, max: 100

        },
        ...
      ],
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      );

    # Results:
    my $FailedServiceActionAssociations =
      $BatchAssociateServiceActionWithProvisioningArtifactOutput
      ->FailedServiceActionAssociations;

# Returns a L<Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifactOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/BatchAssociateServiceActionWithProvisioningArtifact>

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




=head2 B<REQUIRED> ServiceActionAssociations => ArrayRef[ServiceCatalog_ServiceActionAssociation]

One or more associations, each consisting of the Action ID, the Product
ID, and the Provisioning Artifact ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchAssociateServiceActionWithProvisioningArtifact in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

