
package Aws::EC2::CreateReservedInstancesListing {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PriceScheduleSpecification]', required => 1);
  has ReservedInstancesId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReservedInstancesListing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateReservedInstancesListingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
