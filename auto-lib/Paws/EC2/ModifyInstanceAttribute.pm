
package Paws::EC2::ModifyInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attribute' );
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceBlockDeviceMappingSpecification]', traits => ['NameInRequest'], request_name => 'blockDeviceMapping' );
  has DisableApiTermination => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['NameInRequest'], request_name => 'disableApiTermination' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EbsOptimized => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['NameInRequest'], request_name => 'ebsOptimized' );
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupId' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'instanceInitiatedShutdownBehavior' );
  has InstanceType => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'instanceType' );
  has Kernel => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'kernel' );
  has Ramdisk => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'ramdisk' );
  has SourceDestCheck => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has SriovNetSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'sriovNetSupport' );
  has UserData => (is => 'ro', isa => 'Paws::EC2::BlobAttributeValue', traits => ['NameInRequest'], request_name => 'userData' );
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;