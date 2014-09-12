package Aws::EC2::ReservedInstancesOffering {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'duration');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'fixedPrice');
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has Marketplace => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'marketplace');
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'offeringType');
  has PricingDetails => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PricingDetail]', traits => ['Unwrapped'], xmlname => 'pricingDetailsSet');
  has ProductDescription => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productDescription');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RecurringCharge]', traits => ['Unwrapped'], xmlname => 'recurringCharges');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesOfferingId');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'usagePrice');
}
1
