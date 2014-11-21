package Aws::EC2::ReservedInstancesListing {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has CreateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createDate');
  has InstanceCounts => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceCount]', traits => ['Unwrapped'], xmlname => 'instanceCounts');
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PriceSchedule]', traits => ['Unwrapped'], xmlname => 'priceSchedules');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingId');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateDate');
}
1;
