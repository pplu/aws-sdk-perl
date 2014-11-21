
package Aws::EC2::CancelReservedInstancesListing {
  use Moose;
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reservedInstancesListingId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelReservedInstancesListing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CancelReservedInstancesListingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;