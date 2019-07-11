
package Paws::ServiceCatalog::UpdateProvisionedProductProperties;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedProductProperties => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisionedProductProperties', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProvisionedProductProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdateProvisionedProductPropertiesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisionedProductProperties - Arguments for method UpdateProvisionedProductProperties on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProvisionedProductProperties on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdateProvisionedProductProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProvisionedProductProperties.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdateProvisionedProductPropertiesOutput =
      $servicecatalog->UpdateProvisionedProductProperties(
      IdempotencyToken             => 'MyIdempotencyToken',
      ProvisionedProductId         => 'MyId',
      ProvisionedProductProperties => {
        'OWNER' => 'MyPropertyValue'
        ,    # key: values: OWNERmin: 1, max: 128, value: min: 1, max: 1024
      },
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      );

    # Results:
    my $ProvisionedProductId =
      $UpdateProvisionedProductPropertiesOutput->ProvisionedProductId;
    my $ProvisionedProductProperties =
      $UpdateProvisionedProductPropertiesOutput->ProvisionedProductProperties;
    my $RecordId = $UpdateProvisionedProductPropertiesOutput->RecordId;
    my $Status   = $UpdateProvisionedProductPropertiesOutput->Status;

# Returns a L<Paws::ServiceCatalog::UpdateProvisionedProductPropertiesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdateProvisionedProductProperties>

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

The idempotency token that uniquely identifies the provisioning product
update request.



=head2 B<REQUIRED> ProvisionedProductId => Str

The identifier of the provisioned product.



=head2 B<REQUIRED> ProvisionedProductProperties => L<Paws::ServiceCatalog::ProvisionedProductProperties>

A map that contains the provisioned product properties to be updated.

The C<OWNER> key only accepts user ARNs. The owner is the user that is
allowed to see, update, terminate, and execute service actions in the
provisioned product.

The administrator can change the owner of a provisioned product to
another IAM user within the same account. Both end user owners and
administrators can see ownership history of the provisioned product
using the C<ListRecordHistory> API. The new owner can describe all past
records for the provisioned product using the C<DescribeRecord> API.
The previous owner can no longer use C<DescribeRecord>, but can still
see the product's history from when he was an owner using
C<ListRecordHistory>.

If a provisioned product ownership is assigned to an end user, they can
see and perform any action through the API or Service Catalog console
such as update, terminate, and execute service actions. If an end user
provisions a product and the owner is updated to someone else, they
will no longer be able to see or perform any actions through API or the
Service Catalog console on that provisioned product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProvisionedProductProperties in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

