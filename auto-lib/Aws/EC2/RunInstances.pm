
package Aws::EC2::RunInstances {
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has ClientToken => (is => 'ro', isa => 'Str');
  has DisableApiTermination => (is => 'ro', isa => 'Bool');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfileSpecification');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has MaxCount => (is => 'ro', isa => 'Int', required => 1);
  has MinCount => (is => 'ro', isa => 'Int', required => 1);
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::RunInstancesMonitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterfaceSpecification]', traits => ['NameInRequest'], request_name => 'NetworkInterface' );
  has Placement => (is => 'ro', isa => 'Aws::EC2::Placement');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroup' );
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::RunInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
