
package Aws::EC2::StartInstances {
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::StartInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
