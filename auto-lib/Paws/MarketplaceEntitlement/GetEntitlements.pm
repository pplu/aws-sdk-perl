
package Paws::MarketplaceEntitlement::GetEntitlements;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::MarketplaceEntitlement::GetEntitlementFilters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEntitlements');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceEntitlement::GetEntitlementsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceEntitlement::GetEntitlements - Arguments for method GetEntitlements on L<Paws::MarketplaceEntitlement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEntitlements on the
L<AWS Marketplace Entitlement Service|Paws::MarketplaceEntitlement> service. Use the attributes of this class
as arguments to method GetEntitlements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEntitlements.

=head1 SYNOPSIS

    my $entitlement.marketplace = Paws->service('MarketplaceEntitlement');
    my $GetEntitlementsResult = $entitlement . marketplace->GetEntitlements(
      ProductCode => 'MyProductCode',
      Filter      => {
        'CUSTOMER_IDENTIFIER' => [ 'MyFilterValue', ... ]
        ,    # key: values: CUSTOMER_IDENTIFIER, DIMENSION, value: min: 1
      },    # OPTIONAL
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $Entitlements = $GetEntitlementsResult->Entitlements;
    my $NextToken    = $GetEntitlementsResult->NextToken;

    # Returns a L<Paws::MarketplaceEntitlement::GetEntitlementsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entitlement.marketplace/GetEntitlements>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::MarketplaceEntitlement::GetEntitlementFilters>

Filter is used to return entitlements for a specific customer or for a
specific dimension. Filters are described as keys mapped to a lists of
values. Filtered requests are I<unioned> for each value in the value
list, and then I<intersected> for each filter key.



=head2 MaxResults => Int

The maximum number of items to retrieve from the GetEntitlements
operation. For pagination, use the NextToken field in subsequent calls
to GetEntitlements.



=head2 NextToken => Str

For paginated calls to GetEntitlements, pass the NextToken from the
previous GetEntitlementsResult.



=head2 B<REQUIRED> ProductCode => Str

Product code is used to uniquely identify a product in AWS Marketplace.
The product code will be provided by AWS Marketplace when the product
listing is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEntitlements in L<Paws::MarketplaceEntitlement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

