package Paws::EC2::ReservedInstancesOffering;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', xmlname => 'availabilityZone', traits => ['Unwrapped']);
  has CurrencyCode => (is => 'ro', isa => 'Str', xmlname => 'currencyCode', traits => ['Unwrapped']);
  has Duration => (is => 'ro', isa => 'Int', xmlname => 'duration', traits => ['Unwrapped']);
  has FixedPrice => (is => 'ro', isa => 'Num', xmlname => 'fixedPrice', traits => ['Unwrapped']);
  has InstanceTenancy => (is => 'ro', isa => 'Str', xmlname => 'instanceTenancy', traits => ['Unwrapped']);
  has InstanceType => (is => 'ro', isa => 'Str', xmlname => 'instanceType', traits => ['Unwrapped']);
  has Marketplace => (is => 'ro', isa => 'Bool', xmlname => 'marketplace', traits => ['Unwrapped']);
  has OfferingType => (is => 'ro', isa => 'Str', xmlname => 'offeringType', traits => ['Unwrapped']);
  has PricingDetails => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PricingDetail]', xmlname => 'pricingDetailsSet', traits => ['Unwrapped']);
  has ProductDescription => (is => 'ro', isa => 'Str', xmlname => 'productDescription', traits => ['Unwrapped']);
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RecurringCharge]', xmlname => 'recurringCharges', traits => ['Unwrapped']);
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', xmlname => 'reservedInstancesOfferingId', traits => ['Unwrapped']);
  has UsagePrice => (is => 'ro', isa => 'Num', xmlname => 'usagePrice', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservedInstancesOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstancesOffering object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstancesOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 AvailabilityZone => Str

  The Availability Zone in which the Reserved Instance can be used.

=head2 CurrencyCode => Str

  The currency of the Reserved Instance offering you are purchasing. It's
specified using ISO 4217 standard currency codes. At this time, the
only supported currency is C<USD>.

=head2 Duration => Int

  The duration of the Reserved Instance, in seconds.

=head2 FixedPrice => Num

  The purchase price of the Reserved Instance.

=head2 InstanceTenancy => Str

  The tenancy of the reserved instance.

=head2 InstanceType => Str

  The instance type on which the Reserved Instance can be used.

=head2 Marketplace => Bool

  Indicates whether the offering is available through the Reserved
Instance Marketplace (resale) or AWS. If it's a Reserved Instance
Marketplace offering, this is C<true>.

=head2 OfferingType => Str

  The Reserved Instance offering type.

=head2 PricingDetails => ArrayRef[L<Paws::EC2::PricingDetail>]

  The pricing details of the Reserved Instance offering.

=head2 ProductDescription => Str

  The Reserved Instance product platform description.

=head2 RecurringCharges => ArrayRef[L<Paws::EC2::RecurringCharge>]

  The recurring charge tag assigned to the resource.

=head2 ReservedInstancesOfferingId => Str

  The ID of the Reserved Instance offering.

=head2 UsagePrice => Num

  The usage price of the Reserved Instance, per hour.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
