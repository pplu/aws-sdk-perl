package Paws::MarketplaceEntitlement::Entitlement;
  use Moose;
  has CustomerIdentifier => (is => 'ro', isa => 'Str');
  has Dimension => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has ProductCode => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Paws::MarketplaceEntitlement::EntitlementValue');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceEntitlement::Entitlement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceEntitlement::Entitlement object:

  $service_obj->Method(Att1 => { CustomerIdentifier => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceEntitlement::Entitlement object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerIdentifier

=head1 DESCRIPTION

An entitlement represents capacity in a product owned by the customer.
For example, a customer might own some number of users or seats in an
SaaS application or some amount of data capacity in a multi-tenant
database.

=head1 ATTRIBUTES


=head2 CustomerIdentifier => Str

  The customer identifier is a handle to each unique customer in an
application. Customer identifiers are obtained through the
ResolveCustomer operation in AWS Marketplace Metering Service.


=head2 Dimension => Str

  The dimension for which the given entitlement applies. Dimensions
represent categories of capacity in a product and are specified when
the product is listed in AWS Marketplace.


=head2 ExpirationDate => Str

  The expiration date represents the minimum date through which this
entitlement is expected to remain valid. For contractual products
listed on AWS Marketplace, the expiration date is the date at which the
customer will renew or cancel their contract. Customers who are opting
to renew their contract will still have entitlements with an expiration
date.


=head2 ProductCode => Str

  The product code for which the given entitlement applies. Product codes
are provided by AWS Marketplace when the product listing is created.


=head2 Value => L<Paws::MarketplaceEntitlement::EntitlementValue>

  The EntitlementValue represents the amount of capacity that the
customer is entitled to for the product.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceEntitlement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

