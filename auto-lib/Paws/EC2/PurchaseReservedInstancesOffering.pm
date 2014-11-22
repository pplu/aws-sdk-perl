
package Paws::EC2::PurchaseReservedInstancesOffering {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has LimitPrice => (is => 'ro', isa => 'Paws::EC2::ReservedInstanceLimitPrice', traits => ['NameInRequest'], request_name => 'limitPrice' );
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedInstancesOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::PurchaseReservedInstancesOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;