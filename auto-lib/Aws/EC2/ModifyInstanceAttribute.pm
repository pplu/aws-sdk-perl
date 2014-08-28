
package Aws::EC2::ModifyInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceBlockDeviceMappingSpecification]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has DisableApiTermination => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EbsOptimized => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupId' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has Kernel => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has Ramdisk => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has SourceDestCheck => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has SriovNetSupport => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has UserData => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has Value => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;