package Aws::EC2::ReservedInstances {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'duration');
  has End => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'end');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'fixedPrice');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'offeringType');
  has ProductDescription => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productDescription');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RecurringCharge]', traits => ['Unwrapped'], xmlname => 'recurringCharges');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has Start => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'start');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'usagePrice');
}
1
