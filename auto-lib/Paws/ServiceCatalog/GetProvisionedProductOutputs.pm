
package Paws::ServiceCatalog::GetProvisionedProductOutputs;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has OutputKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');
  has ProvisionedProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProvisionedProductOutputs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::GetProvisionedProductOutputsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::GetProvisionedProductOutputs - Arguments for method GetProvisionedProductOutputs on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProvisionedProductOutputs on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method GetProvisionedProductOutputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProvisionedProductOutputs.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $GetProvisionedProductOutputsOutput =
      $servicecatalog->GetProvisionedProductOutputs(
      AcceptLanguage         => 'MyAcceptLanguage',            # OPTIONAL
      OutputKeys             => [ 'MyOutputKey', ... ],        # OPTIONAL
      PageSize               => 1,                             # OPTIONAL
      PageToken              => 'MyPageToken',                 # OPTIONAL
      ProvisionedProductId   => 'MyId',                        # OPTIONAL
      ProvisionedProductName => 'MyProvisionedProductName',    # OPTIONAL
      );

    # Results:
    my $NextPageToken = $GetProvisionedProductOutputsOutput->NextPageToken;
    my $Outputs       = $GetProvisionedProductOutputsOutput->Outputs;

 # Returns a L<Paws::ServiceCatalog::GetProvisionedProductOutputsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/GetProvisionedProductOutputs>

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




=head2 OutputKeys => ArrayRef[Str|Undef]

The list of keys that the API should return with their values. If none
are provided, the API will return all outputs of the provisioned
product.



=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 ProvisionedProductId => Str

The identifier of the provisioned product that you want the outputs
from.



=head2 ProvisionedProductName => Str

The name of the provisioned product that you want the outputs from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProvisionedProductOutputs in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

