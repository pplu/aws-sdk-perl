
package Aws::EC2::ModifyReservedInstances {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesId' , required => 1);
  has TargetConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesConfiguration]', traits => ['NameInRequest'], request_name => 'ReservedInstancesConfigurationSetItemType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReservedInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ModifyReservedInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;