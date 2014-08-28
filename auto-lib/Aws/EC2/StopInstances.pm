
package Aws::EC2::StopInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Force => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::StopInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;