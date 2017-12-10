package Paws::MarketplaceEntitlement::EntitlementValue;
  use Moose;
  has BooleanValue => (is => 'ro', isa => 'Bool');
  has DoubleValue => (is => 'ro', isa => 'Num');
  has IntegerValue => (is => 'ro', isa => 'Int');
  has StringValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceEntitlement::EntitlementValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceEntitlement::EntitlementValue object:

  $service_obj->Method(Att1 => { BooleanValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceEntitlement::EntitlementValue object:

  $result = $service_obj->Method(...);
  $result->Att1->BooleanValue

=head1 DESCRIPTION

The EntitlementValue represents the amount of capacity that the
customer is entitled to for the product.

=head1 ATTRIBUTES


=head2 BooleanValue => Bool

  The BooleanValue field will be populated with a boolean value when the
entitlement is a boolean type. Otherwise, the field will not be set.


=head2 DoubleValue => Num

  The DoubleValue field will be populated with a double value when the
entitlement is a double type. Otherwise, the field will not be set.


=head2 IntegerValue => Int

  The IntegerValue field will be populated with an integer value when the
entitlement is an integer type. Otherwise, the field will not be set.


=head2 StringValue => Str

  The StringValue field will be populated with a string value when the
entitlement is a string type. Otherwise, the field will not be set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceEntitlement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

